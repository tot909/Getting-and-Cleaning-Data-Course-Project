# Download the dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Dataset.zip")

# Unzip the dataset
unzip("./Dataset.zip")
# Read activity labels and features
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("activityId", "activityType"))
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("featureId", "featureName"))

# Read training data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subjectId")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "activityId")

# Read test data
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subjectId")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "activityId")

# Combine training and test data for X, Y and subjects
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
subject_data <- rbind(subject_train, subject_test)

# Combine all data into one dataset
all_data <- cbind(subject_data, y_data, x_data)
# Extract columns with mean() or std() in their names
features_mean_std <- grep("-(mean|std)\\(\\)", features$featureName)

# Subset the data to keep only the required features
x_data_mean_std <- x_data[, features_mean_std]

# Naming the columns with the feature names
names(x_data_mean_std) <- features[features_mean_std, 2]

# Combine the data again
all_data_mean_std <- cbind(subject_data, y_data, x_data_mean_std)
# Merge activity labels
all_data_mean_std$activityId <- factor(all_data_mean_std$activityId, levels = activity_labels$activityId, labels = activity_labels$activityType)

# Rename columns
names(all_data_mean_std)[2] <- "activityType"

# Clean up variable names
names(all_data_mean_std) <- gsub("^t", "time", names(all_data_mean_std))
names(all_data_mean_std) <- gsub("^f", "frequency", names(all_data_mean_std))
names(all_data_mean_std) <- gsub("Acc", "Accelerometer", names(all_data_mean_std))
names(all_data_mean_std) <- gsub("Gyro", "Gyroscope", names(all_data_mean_std))
names(all_data_mean_std) <- gsub("Mag", "Magnitude", names(all_data_mean_std))
names(all_data_mean_std) <- gsub("BodyBody", "Body", names(all_data_mean_std))

# Create a second tidy dataset
tidy_data <- aggregate(. ~ subjectId + activityType, all_data_mean_std, mean)

# Order the data by subjectId and activityType
tidy_data <- tidy_data[order(tidy_data$subjectId, tidy_data$activityType), ]

# Write the dataset to a file
write.table(tidy_data, "tidy_data.txt", row.name = FALSE)


