# Codebook for Human Activity Recognition Using Smartphone Data Set

## Introduction
These data set extracted from Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. - http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

## Data sets
Two data sets included are:
1. **har_detail** - Measurements taken for every activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) by all 30 subjects. There are 10299 observations with 66 measurements.
2. **har_summary** - Summary of har_detail data set averaging all measurements by activities by each subjects. There are 180 observations with 66 measurements

## Data description
The data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (*tBodyAcc-XYZ* and *tGravityAcc-XYZ*) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (*tBodyAccJerk-XYZ* and *tBodyGyroJerk-XYZ*). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (*tBodyAccMag*, *tGravityAccMag*, *tBodyAccJerkMag*, *tBodyGyroMag*, *tBodyGyroJerkMag*)

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing *fBodyAcc-XYZ*, *fBodyAccJerk-XYZ*, *fBodyGyro-XYZ*, *fBodyAccJerkMag*, *fBodyGyroMag*, *fBodyGyroJerkMag*. (Note the 'f' to indicate frequency domain signals). 

Field Name | Description
---|---
activity | Activity name
subject | Subject doing the activity
tBodyAcc-mean()-X | Average of time domain body acceleration signal in X-axis
tBodyAcc-mean()-Y | Average of time domain body acceleration signal in Y-axis
tBodyAcc-mean()-Z | Average of time domain body acceleration signal in Z-axis
tBodyAcc-std()-X | Standard deviation of time domain body acceleration signal in X-axis
tBodyAcc-std()-Y | Standard deviation of time domain body acceleration signal in Y-axis 
tBodyAcc-std()-Z | Standard deviation of time domain body acceleration signal in Z-axis
tGravityAcc-mean()-X | Average of time domain gravity acceleration signal in X-axis
tGravityAcc-mean()-Y | Average of time domain gravity acceleration signal in Y-axis
tGravityAcc-mean()-Z | Average of time domain gravity acceleration signal in Z-axis
tGravityAcc-std()-X | Standard deviation of time domain gravity acceleration signal in X-axis
tGravityAcc-std()-Y | Standard deviation of time domain gravity acceleration signal in Y-axis
tGravityAcc-std()-Z | Standard deviation of time domain gravity acceleration signal in Z-axis
tBodyAccJerk-mean()-X | Average of time domain body acceleration Jerk signal in X-axis
tBodyAccJerk-mean()-Y | Average of time domain body acceleration Jerk signal in Y-axis
tBodyAccJerk-mean()-Z | Average of time domain body acceleration Jerk signal in Z-axis
tBodyAccJerk-std()-X | Standard deviation of time domain body acceleration Jerk signal in X-axis
tBodyAccJerk-std()-Y | Standard deviation of time domain body acceleration Jerk signal in Y-axis
tBodyAccJerk-std()-Z | Standard deviation of time domain body acceleration Jerk signal in Z-axis
tBodyGyro-mean()-X | Average of time domain body gyroscope signal in X-axis
tBodyGyro-mean()-Y | Average of time domain body gyroscope signal in Y-axis
tBodyGyro-mean()-Z | Average of time domain body gyroscope signal in Z-axis
tBodyGyro-std()-X | Standard deviation of time domain body gyroscope signal in X-axis
tBodyGyro-std()-Y | Standard deviation of time domain body gyroscope signal in Y-axis
tBodyGyro-std()-Z | Standard deviation of time domain body gyroscope signal in Z-axis
tBodyGyroJerk-mean()-X | Average of time domain body gyroscope Jerk signal in X-axis
tBodyGyroJerk-mean()-Y | Average of time domain body gyroscope Jerk signal in Y-axis
tBodyGyroJerk-mean()-Z | Average of time domain body gyroscope Jerk signal in Z-axis
tBodyGyroJerk-std()-X | Standard deviation of time domain body gyroscope Jerk signal in X-axis
tBodyGyroJerk-std()-Y | Standard deviation of time domain body gyroscope Jerk signal in Y-axis
tBodyGyroJerk-std()-Z | Standard deviation of time domain body gyroscope Jerk signal in Z-axis
tBodyAccMag-mean() | Average of magnitude of time domain body acceleration three-dimensional signal
tBodyAccMag-std() | Standard deviation of magnitude of time domain body acceleration three-dimensional signal
tGravityAccMag-mean() | Average of magnitude of time domain gravity acceleration three-dimensional signal
tGravityAccMag-std() | Standard deviation of magnitude of time domain gravity acceleration three-dimensional signal
tBodyAccJerkMag-mean() | Average of magnitude of time domain body acceleration three-dimensional Jerk signal
tBodyAccJerkMag-std() | Standard deviation of magnitude of time domain body acceleration three-dimensional Jerk signal
tBodyGyroMag-mean() | Average of magnitude of time domain body gyroscope three-dimensional signal
tBodyGyroMag-std() | Standard deviation of magnitude of time domain body gyroscope three-dimensional signal
tBodyGyroJerkMag-mean() | Average of magnitude of time domain body gyroscope three-dimensional Jerk signal
tBodyGyroJerkMag-std() | Standard deviation of magnitude of time domain body gyroscope three-dimensional Jerk signal
fBodyAcc-mean()-X | Average of frequency domain body acceleration signal in X-axis
fBodyAcc-mean()-Y | Average of frequency domain body acceleration signal in Y-axis
fBodyAcc-mean()-Z | Average of frequency domain body acceleration signal in Z-axis
fBodyAcc-std()-X | Standard deviation of frequency domain body acceleration signal in X-axis
fBodyAcc-std()-Y | Standard deviation of frequency domain body acceleration signal in Y-axis
fBodyAcc-std()-Z | Standard deviation of frequency domain body acceleration signal in Z-axis
fBodyAccJerk-mean()-X | Average of frequency domain body Jerk acceleration signal in X-axis
fBodyAccJerk-mean()-Y | Average of frequency domain body Jerk acceleration signal in Y-axis
fBodyAccJerk-mean()-Z | Average of frequency domain body Jerk acceleration signal in Z-axis
fBodyAccJerk-std()-X | Standard deviation of frequency domain body Jerk acceleration signal in X-axis
fBodyAccJerk-std()-Y | Standard deviation of frequency domain body Jerk acceleration signal in Y-axis
fBodyAccJerk-std()-Z | Standard deviation of frequency domain body Jerk acceleration signal in Z-axis
fBodyGyro-mean()-X | Average of frequency domain body gyroscope signal in X-axis
fBodyGyro-mean()-Y | Average of frequency domain body gyroscope signal in Y-axis
fBodyGyro-mean()-Z | Average of frequency domain body gyroscope signal in Z-axis
fBodyGyro-std()-X | Standard deviation of frequency domain body gyroscope signal in X-axis
fBodyGyro-std()-Y | Standard deviation of frequency domain body gyroscope signal in Y-axis
fBodyGyro-std()-Z | Standard deviation of frequency domain body gyroscope signal in Z-axis
fBodyAccMag-mean() | Average of magnitude of frequency domain body acceleration three-dimensional signal 
fBodyAccMag-std() | Standard deviation of magnitude of frequency domain body acceleration three-dimensional signal
fBodyBodyAccJerkMag-mean() | Average of magnitude of frequency domain body acceleration three-dimensional Jerk signal 
fBodyBodyAccJerkMag-std() | Standard deviation of magnitude of frequency domain body acceleration three-dimensional Jerk signal 
fBodyBodyGyroMag-mean() | Average of magnitude of frequency domain body gyroscope three-dimensional signal 
fBodyBodyGyroMag-std() | Standard deviation of magnitude of frequency domain body gyroscope three-dimensional signal
fBodyBodyGyroJerkMag-mean() | Average of magnitude of frequency domain body gyroscope three-dimensional Jerk signal
fBodyBodyGyroJerkMag-std() | Standard deviation of magnitude of frequency domain body gyroscope three-dimensional Jerk signal

## License
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012