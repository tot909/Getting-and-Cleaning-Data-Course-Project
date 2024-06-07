# CodeBook for Human Activity Recognition Using Smartphones Dataset

## Overview
This code book describes the variables, data, and transformations performed on the Human Activity Recognition Using Smartphones Dataset for the Getting and Cleaning Data Course Project.

## Data Source
- Original dataset: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- Dataset downloaded from: [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Variables

### Identifiers
- `subjectId`: ID of the subject (integer, range: 1-30)
- `activityType`: Type of activity performed (character, values: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

### Measurements
The following measurements were extracted from the dataset. Each measurement is a numeric variable representing the mean or standard deviation of a particular signal:

- `timeBodyAccelerometerMeanX`
- `timeBodyAccelerometerMeanY`
- `timeBodyAccelerometerMeanZ`
- `timeBodyAccelerometerStdX`
- `timeBodyAccelerometerStdY`
- `timeBodyAccelerometerStdZ`
- `timeGravityAccelerometerMeanX`
- `timeGravityAccelerometerMeanY`
- `timeGravityAccelerometerMeanZ`
- `timeGravityAccelerometerStdX`
- `timeGravityAccelerometerStdY`
- `timeGravityAccelerometerStdZ`
- `timeBodyAccelerometerJerkMeanX`
- `timeBodyAccelerometerJerkMeanY`
- `timeBodyAccelerometerJerkMeanZ`
- `timeBodyAccelerometerJerkStdX`
- `timeBodyAccelerometerJerkStdY`
- `timeBodyAccelerometerJerkStdZ`
- `timeBodyGyroscopeMeanX`
- `timeBodyGyroscopeMeanY`
- `timeBodyGyroscopeMeanZ`
- `timeBodyGyroscopeStdX`
- `timeBodyGyroscopeStdY`
- `timeBodyGyroscopeStdZ`
- `timeBodyGyroscopeJerkMeanX`
- `timeBodyGyroscopeJerkMeanY`
- `timeBodyGyroscopeJerkMeanZ`
- `timeBodyGyroscopeJerkStdX`
- `timeBodyGyroscopeJerkStdY`
- `timeBodyGyroscopeJerkStdZ`
- `frequencyBodyAccelerometerMeanX`
- `frequencyBodyAccelerometerMeanY`
- `frequencyBodyAccelerometerMeanZ`
- `frequencyBodyAccelerometerStdX`
- `frequencyBodyAccelerometerStdY`
- `frequencyBodyAccelerometerStdZ`
- `frequencyBodyAccelerometerJerkMeanX`
- `frequencyBodyAccelerometerJerkMeanY`
- `frequencyBodyAccelerometerJerkMeanZ`
- `frequencyBodyAccelerometerJerkStdX`
- `frequencyBodyAccelerometerJerkStdY`
- `frequencyBodyAccelerometerJerkStdZ`
- `frequencyBodyGyroscopeMeanX`
- `frequencyBodyGyroscopeMeanY`
- `frequencyBodyGyroscopeMeanZ`
- `frequencyBodyGyroscopeStdX`
- `frequencyBodyGyroscopeStdY`
- `frequencyBodyGyroscopeStdZ`

### Transformations
1. **Merging Training and Test Sets**: The training and test datasets were merged to create one dataset.
2. **Extracting Mean and Standard Deviation**: Only measurements on the mean and standard deviation were extracted for each measurement.
3. **Descriptive Activity Names**: Activity names were used to name the activities in the dataset.
4. **Labeling Dataset with Descriptive Variable Names**: The dataset was labeled with descriptive variable names, replacing abbreviations with full descriptive names.
5. **Creating a Tidy Dataset**: A second, independent tidy dataset was created with the average of each variable for each activity and each subject.

## Dataset Info
- **Subjects**: 30 volunteers within an age bracket of 19-48 years.
- **Activities**: Each subject performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
- **Signals**: The obtained dataset has signals pre-processed using noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window).

## Notes
- All variables were normalized and bounded within [-1,1].
- Features are normalized and named following the standard practices in signal processing and time-domain feature extraction.

