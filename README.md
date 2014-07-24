## Final Project For Getting and Cleaning Data 
# Course 3 of JHU Data Science Sequence

# Overview
The goal of the project was to take data collected from sensors in a Samsung Galaxy S smartphone and prepare it as a tidy data set for later analysis. The data set in question is described at [the UCI data website](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and may be obtained [via this link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The assignment was to create a script that does the following with the Samsung data:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

# R Script
The script I created is titled [run_analysis.R](https://github.com/lgallen/gettingcleaning/blob/master/run_analysis.R). Following the provided link will take you to the fully commented code. A basic outline of the procedure I followed is as follows.
1. Read in all of the data provided in the .zip file.
2. Since the goal was to extract only measurements on mean and standard deviation, I grepped "mean" and "std" from the "features" data frame. However, I excluded any entries that for mean that were followed by "F" since this would have included "meanFreq", a weighted average. Note that by using "mean" and not "[m|M]ean", I also intentionally excluded angle features.
3. Having extracted the desired features, I used rbind and cbind to create one larger data frame of all x, y, and subject entries. I then did a merge to replace activity numbers with names.  
4. Note that along the way, column names have been modified to use descriptive names and lower case letters, consistent with suggested naming conventions.
5. Finally, in order to get the average of each variable for each activity and each subject, I melted the newly merged data frame and dcast it by subject and activity. 

The resulting data frame was written to a text file, [tidy.txt](https://github.com/lgallen/gettingcleaning/blob/master/tidy.txt). 


# Codebook
The codebook for the project is named [CodeBook.md](https://github.com/lgallen/gettingcleaning/blob/master/CodeBook.md). A brief explanation of each descriptor is provided. Additionally, it may be helpful to know the following information, which is updated from the features_info.txt file that was provided in the orignal .zip file:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals taccxyz and tgyroxyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyaccxyz and tgravityaccxyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tbodyaccjerkxyz and tbodygyrojerkxyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyaccxyz, fBodyaccjerkxyz, fbodygyroxyz, fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'xyz' is used to denote 3-axial signals in the x, y and z directions.