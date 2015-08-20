

library(plyr)


# Set the filepath to the base of the unzipped downloaded files (assumes unzipped in working directory)
filepath <- "getdata-projectfiles-UCI HAR Dataset\\UCI HAR Dataset"


# Load all the datasets
trainingSetX <- read.table(paste(filepath , "\\train\\X_train.txt", sep=""))
trainingSetY <- read.table(paste(filepath , "\\train\\Y_train.txt", sep=""))
trainingSetSubject <- read.table(paste(filepath , "\\train\\subject_train.txt", sep=""))

testSetX <- read.table(paste(filepath , "\\test\\X_test.txt", sep=""))
testSetY <- read.table(paste(filepath , "\\test\\Y_test.txt", sep=""))
testSetSubject <- read.table(paste(filepath , "\\test\\subject_test.txt", sep=""))

features <- read.table(paste(filepath , "\\features.txt", sep=""))
activity_labels <- read.table(paste(filepath , "\\activity_labels.txt", sep=""))


# Merge test with training sets
SetX <- rbind(trainingSetX, testSetX)
SetY <- rbind(trainingSetY, testSetY)
SetSubject <- rbind(trainingSetSubject, testSetSubject)

# Name SetX
names(SetX) <- features[,2]

# Create a new data frame only containing columns with mean() or std() in their names
SetXMeanStd <- SetX[,grep("mean\\(\\)|std\\(\\)", names(SetX), value=TRUE)]

# Add activity data (Y) to set 
SetXMeanStd$Activity <- SetY$V1

# Add subject data to set
SetXMeanStd$Subject <- SetSubject$V1

# Rename activity numbers to names
DataSet <- merge( x = SetXMeanStd, y = activity_labels, by.x = "Activity", by.y = "V1")
DataSet <- rename(DataSet, c("V2"="ActivityLabel"))

# Remove technical features from column names
# Remove brackets ()
colnames(DataSet) <- gsub("\\(|\\)", "", colnames(DataSet)) 
# Remove duplicate Body
colnames(DataSet) <- gsub("BodyBody", "Body", colnames(DataSet))

# Aggregate to Subject and activity and mean every other column
TidySet <- ddply(DataSet, .(Subject, ActivityLabel), function(x) colMeans(x[,2:67]))

# Write output
write.table(TidySet, file="cleanDataSet.txt", row.names = FALSE)