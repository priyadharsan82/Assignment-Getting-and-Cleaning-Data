#Creating test and train datasets

varnames <- read.table("./UCI HAR Dataset/features.txt")[,2]

xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity" )
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subjectid")
test <- cbind(subjecttest, ytest, xtest)

xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt",  col.names = "subjectid")
train <- cbind(subjecttrain, ytrain, xtrain)

#merging train and test datasets into one dataset

merged_df <- merge(test, train, all = TRUE)
colnames(merged_df) <- c("subjectid", "activity", varnames)

#Extracting the mean and standard deviation columns for each measurement(Variable)

newvarnum <- grep("mean\\(\\)|std\\(\\)", varnames)
meanstd_df <- merged_df[, c(1,2,newvarnum +2)]

#Using descriptive activity names to name the activities in the data set

activities <- read.table("./UCI HAR Dataset/activity_labels.txt")[,2]
meanstd_df$activity <- activities[meanstd_df$activity]

#labelling the data set with descriptive variable names

cnames <- colnames(meanstd_df)
cnames <- sub("^t", "time", cnames)
cnames <- sub("^f", "freq", cnames)
cnames <- sub("\\(\\)", "", cnames)
cnames <- sub("mean", "Mean", cnames)
cnames <- sub("std", "Std", cnames)
cnames <- gsub('([[:upper:]])', ' \\1', cnames)
cnames <- gsub("-", "", cnames)
cnames <- gsub(" ", ".", cnames)
cnames <- tolower(cnames)
colnames(meanstd_df) <- cnames

#creating the independent tidy data set with the average of each variable for each activity and each subject

library(dplyr)
final_df <-  meanstd_df %>% group_by(subjectid, activity) %>%summarize_each(mean)
write.table(final_df, file = "tidy_data.txt", row.names = FALSE)
