# Getting-and-Cleaning-Data-Course-Project

This repository contains the R script and associated documentation for the Coursera "Getting and Cleaning Data" course project.

## Files

- `run_analysis.R`: R script that performs the data cleaning and tidying.
- `tidy_data.txt`: Output file containing the tidy dataset.
- `CodeBook.md`: Describes the variables, data, and transformations.
- `README.md`: This file.

## Instructions

1. Download the dataset from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
2. Unzip the dataset into your working directory.
3. Source the `run_analysis.R` script.

The script will perform the following steps:

1. Merge the training and test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement.
3. Use descriptive activity names to name the activities in the data set.
4. Appropriately label the data set with descriptive variable names.
5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
