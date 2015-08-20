# Human Activity Recognition Using Smartphones Dataset

This data set originates from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and can be downloaded using this URL: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

A brief description can be found in the features.txt file within the data set which we will elaborate on here.



## Data Set
The original data set ios split into two parts: a training set (70%) and a set test (30%). Each set contains a vector with 561 variables containing measures done with accelerometers and gyroscopes which are bound between -1 and 1. Each row in the set represent the 561 measures of a subject doing a certain activity. Combined, the data set contains 10,299 observations. 

The experiments were done with 30 volunteers doing 6 types of activities.

## The clean data set

After combining the test set with the training set we extract the columns containing the words "mean()" or "std()" indicating they are measures about a mean or standard deviation. Technical features in the column names like the brackets or the double occurence of the word "Body" were removed to have cleaner column names.

We are left with a dataset with 68 variables, starting with the subject and the activity label, followed by the means off every column which had the words "mean()" or "std()" in them.

- Subject
- ActivityLabel
- tBodyAcc-mean-X
- tBodyAcc-mean-Y       
- tBodyAcc-std-X
- tBodyAcc-std-Y
- tBodyAcc-std-Z
- tGravityAcc-mean-X
- tGravityAcc-mean-Y
- tGravityAcc-mean-Z
- tGravityAcc-std-X
- tGravityAcc-std-Y
- tGravityAcc-std-Z
- tBodyAccJerk-mean-X
- tBodyAccJerk-mean-Y
- tBodyAccJerk-mean-Z
- tBodyAccJerk-std-X
- tBodyAccJerk-std-Y
- tBodyAccJerk-std-Z
- tBodyGyro-mean-X
- tBodyGyro-mean-Y
- tBodyGyro-mean-Z
- tBodyGyro-std-X
- tBodyGyro-std-Y
- tBodyGyro-std-Z
- tBodyGyroJerk-mean-X
- tBodyGyroJerk-mean-Y
- tBodyGyroJerk-mean-Z
- tBodyGyroJerk-std-X
- tBodyGyroJerk-std-Y
- tBodyGyroJerk-std-Z
- tBodyAccMag-mean
- tBodyAccMag-std
- tGravityAccMag-mean
- tGravityAccMag-std
- tBodyAccJerkMag-mean
- tBodyAccJerkMag-std
- tBodyGyroMag-mean
- tBodyGyroMag-std
- tBodyGyroJerkMag-mean
- tBodyGyroJerkMag-std
- fBodyAcc-mean-X
- fBodyAcc-mean-Y
- fBodyAcc-mean-Z
- fBodyAcc-std-X
- fBodyAcc-std-Y
- fBodyAcc-std-Z
- fBodyAccJerk-mean-X
- fBodyAccJerk-mean-Y
- fBodyAccJerk-mean-Z
- fBodyAccJerk-std-X
- fBodyAccJerk-std-Y
- fBodyAccJerk-std-Z
- fBodyGyro-mean-X
- fBodyGyro-mean-Y
- fBodyGyro-mean-Z
- fBodyGyro-std-X
- fBodyGyro-std-Y
- fBodyGyro-std-Z
- fBodyAccMag-mean
- fBodyAccMag-std
- fBodyAccJerkMag-mean
- fBodyAccJerkMag-std
- fBodyGyroMag-mean
- fBodyGyroMag-std
- fBodyGyroJerkMag-mean
- fBodyGyroJerkMag-std


The complete procedure to get to this file can be found in the README.md
