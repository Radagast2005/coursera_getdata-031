# READ ME

This document describes the steps taken in run_analysis.R to transform the UCI HAR Dataset into a tidy dataset. This document assumes the entire content of the zip file was extracted to the R working directory.

The first step is to identify and load the tables. These are:
- X_train.txt
- Y_train.txt
- Subject_train.txt
- X_test.txt
- Y_test.txt
- Subject_test.txt
- features.txt
- activity_labels.txt

After these files are loaded, the first step is to merge the test set with the training set. This is fdone using the rbind function for X, Y and subjects.

From the features.txt we extract the column names for the set containing X and replace X' column names.

Since we only need measures with a mean or standarddeviation, we extract the columns containing the strings "mean()" or "std()".

After this, we add the activity and the subject data to the set.

The activities are named by using the activity_labels.txt file and merging it with our data set.

To make the columns more readable, we remove the doubled brackets and the repetition of the word "body" in the column names.

We summarize the set with the ddply function with Subject and ActivityLabel and calculate the mean of every other column.

Finally, we save our data set named "cleanDataSet.txt" using the write.table function.