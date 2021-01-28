Getting and Cleaning Data: Week-4 Assignment
================
Priyadharsan M
28/01/2021

This repository contains files related to the assignment for week 4 of
the “Getting and Cleaning Data” Coursera course.

### Assignment Objective

The objective of the assignment is to create a tidy dataset from the
[“Human Activity Recognition Using Smartphones
Dataset”](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The tidy data should contain the mean and standard deviation
measurements of the signals from the original given dataset.

The data linked above represents data collected from the accelerometers
from the Samsung Galaxy S smartphone. A full description is available
at:
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

### Repositry Contents

The repository contains the following files:

1.  “README.md”

2.  “Codebook.md” - A markdown file that describes the variables, the
    data, and the steps that were performed to clean up the data and
    produce the tidy data

3.  “run\_analysis.R” - An R file that contains the code that was run on
    the raw data to produce the tidy data

4.  “tidy\_data.txt” - a text(.txt) file that contains the final tidy
    data of mean and standard deviation measurements averaged for each
    activity by each subject(experiment participant)

### Code Description

The code in the file “run\_analysis.R” first creates test and train
datasets by reading the .txt files from the downloaded datset. Then the
test and train datasets are merged and from the merged data, the mean
and standard deviation measurements are extracted. The activity column
and the variable names are then replaced with descriptive values. From
the resulting data, the variables are averaged for all the variables for
each activity of the experiment particitipant. This data is then written
on to a text file “tidy\_data.txt” using write.table() with row.names =
FALSE.

***Note:*** The code requires the dplyr package to be installed. Version
used - 1.0.2

### Final Tidy Data

The final data file contains the measurement values for the 30
volunteers, each with 6 different activities resulting in 180 rows. The
extracted mean and standard deviation variables have a count of 66. This
66 and the volunteer id and activity variable add up to 68 columns each
with a descriptive column name.
