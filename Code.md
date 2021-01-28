Codebook
================
Priyadharsan M
28-01-2021

## Project Description

The objective of this project is to create a tidy dataset from the given
data of physical activities of 30 volunteers

\#\#Study design and data processing

\#\#\#Collection of the raw data The raw data for this project was
downloaded from the link - [UCI HAR
Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The dataset linked above represents data collected from the
accelerometers from the Samsung Galaxy S smartphone. A full description
is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

\#\#Creating the tidy datafile

\#\#\#Guide to create the tidy data file 1. Download the zip file
containing the data from the download link given above 2. Unzip the
downloaded file and place it in the working directory 3. Run the R code
from the file “run\_analysis.R” 4. The output should be a text(.txt)
file containing the tidy dataset called “tidy\_data.txt”

\#\#\#Cleaning of the data The R code file “run\_analysis.R” creates the
“tidy\_data.txt” through the following steps: 1. Create test and train
datasets from the original data 2. Merge train and test datasets into
one dataset containing all the needed observations 3. Extract the mean
and standard deviation columns for each measurement(Variable) 4. Use
descriptive activity names to name the activities in the data set 5.
Label the data set with descriptive variable names 6. create the
independent tidy data set with the average of each variable for each
activity and each subject(volunteer)

\#\#Description of the variables in the tiny\_data.txt file -
Dimensions: 180 rows 68 columns - Summary of the data:

    ## Loading required package: lattice

    ## Loading required package: survival

    ## Loading required package: Formula

    ## Loading required package: ggplot2

    ## 
    ## Attaching package: 'Hmisc'

    ## The following objects are masked from 'package:dplyr':
    ## 
    ##     src, summarize

    ## The following objects are masked from 'package:base':
    ## 
    ##     format.pval, units

    ## final_df 
    ## 
    ##  68  Variables      0  Observations
    ## --------------------------------------------------------------------------------
    ## 
    ## Variables with all observations missing:
    ## 
    ##  [1] subjectid                         activity                         
    ##  [3] time.body.acc.mean.x              time.body.acc.mean.y             
    ##  [5] time.body.acc.mean.z              time.body.acc.std.x              
    ##  [7] time.body.acc.std.y               time.body.acc.std.z              
    ##  [9] time.gravity.acc.mean.x           time.gravity.acc.mean.y          
    ## [11] time.gravity.acc.mean.z           time.gravity.acc.std.x           
    ## [13] time.gravity.acc.std.y            time.gravity.acc.std.z           
    ## [15] time.body.acc.jerk.mean.x         time.body.acc.jerk.mean.y        
    ## [17] time.body.acc.jerk.mean.z         time.body.acc.jerk.std.x         
    ## [19] time.body.acc.jerk.std.y          time.body.acc.jerk.std.z         
    ## [21] time.body.gyro.mean.x             time.body.gyro.mean.y            
    ## [23] time.body.gyro.mean.z             time.body.gyro.std.x             
    ## [25] time.body.gyro.std.y              time.body.gyro.std.z             
    ## [27] time.body.gyro.jerk.mean.x        time.body.gyro.jerk.mean.y       
    ## [29] time.body.gyro.jerk.mean.z        time.body.gyro.jerk.std.x        
    ## [31] time.body.gyro.jerk.std.y         time.body.gyro.jerk.std.z        
    ## [33] time.body.acc.mag.mean            time.body.acc.mag.std            
    ## [35] time.gravity.acc.mag.mean         time.gravity.acc.mag.std         
    ## [37] time.body.acc.jerk.mag.mean       time.body.acc.jerk.mag.std       
    ## [39] time.body.gyro.mag.mean           time.body.gyro.mag.std           
    ## [41] time.body.gyro.jerk.mag.mean      time.body.gyro.jerk.mag.std      
    ## [43] freq.body.acc.mean.x              freq.body.acc.mean.y             
    ## [45] freq.body.acc.mean.z              freq.body.acc.std.x              
    ## [47] freq.body.acc.std.y               freq.body.acc.std.z              
    ## [49] freq.body.acc.jerk.mean.x         freq.body.acc.jerk.mean.y        
    ## [51] freq.body.acc.jerk.mean.z         freq.body.acc.jerk.std.x         
    ## [53] freq.body.acc.jerk.std.y          freq.body.acc.jerk.std.z         
    ## [55] freq.body.gyro.mean.x             freq.body.gyro.mean.y            
    ## [57] freq.body.gyro.mean.z             freq.body.gyro.std.x             
    ## [59] freq.body.gyro.std.y              freq.body.gyro.std.z             
    ## [61] freq.body.acc.mag.mean            freq.body.acc.mag.std            
    ## [63] freq.body.body.acc.jerk.mag.mean  freq.body.body.acc.jerk.mag.std  
    ## [65] freq.body.body.gyro.mag.mean      freq.body.body.gyro.mag.std      
    ## [67] freq.body.body.gyro.jerk.mag.mean freq.body.body.gyro.jerk.mag.std

\#\#\#Descriptions of Variables 1. subjectid: Contains IDs that identify
the subject(volunteer) who performed the activity for each window
sample. It ranges from 1 to 30.

2.  activity: contains the activity performed byeach subject

3.  time/freq: variables containing time/freq at the start of the
    variable name indicates type i.e. whether the measured value is time
    or frequency

4.  body: Variables containing “body” in their names contains
    signals(measurements) based on the body of an volunteer(subject) and
    is derived from the phone’s accelerometer

5.  gravity: Variables containing “gravity” in their names contains
    signals(measurements) based on the gravity(attraction of body
    towards the centre of the earth) and is also derived from the
    phone’s accelerometer

6.  acc: this indicates the measurement was taken from the aceelerometer
    on the phone

7.  gyro: this indicates the measurement was taken from the gyroscope on
    the phone

8.  jerk: this indicates the variable contains the measurements of
    sudden movement(jerk) based on body acceleration and angular
    velocity and mag indicates magnitude

9.  mean: indicates the variable contains mean values

10. std: indicates the variable contains standard deviation values

11. \-xyz: the “x”, “y”, or “z” at the end of variable names indicate
    the direction in which it was measured i.e. whether X,Y, or Z
    direction

Finally all these levels in the variable names are seperated by a “.”

\#\#Sources [Getting and Cleaning the Assignment by David
Hood](https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/)
[Getting and Cleaning Data - Course project help guide by Luis
Sandino](https://drive.google.com/file/d/1TiA9Re1y16HTJ_7xUvsW1V15blzjvj03/view)
[Codebook
template](https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41)
