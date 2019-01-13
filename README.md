# Human Activity Recognition Using Smartphones Dataset
repostiory created by Ahmad Dendi Dwipayana (ahmad.dendi@gmail.com)

## Files included in repository
- README.md - this file
- run_analysis.R - R script to run analysis on UCI HAR data set
- codebook.md - code book explaining the data sets created by run_analysis.R
- har_summary.txt - sample output of run_analysis.R
- activity_labels.txt - activity label for the experiment
- features.txt - list of features of the experiment
- train folder - folder containing required train files from the experiment
- test folder - folder containing required test files from the experiment

## Prerequisites
run_analysis.R required plyr and dplyr installed

## How to use run_analysis.R
Before running run_analysis.R, make sure these files available in your R working directory :
- activity_labels
- features
- train/subject_train.txt
- train/X_train.txt
- train/y_train.txt
- test/subject_test.txt
- test/X_test.txt
- test/y_test.txt

If you prefer to put the files in a subfolder in your working directory, please change the ***data_location*** before you run. <br />
After all set, you can run the script using : <br /> 
***source('run_analysis.R')***

## How run_analysis.R works
Here is the gist on how I make run_analysis.R works to achieve the requirement for Getting and Cleaning Data Course project:
1. Create raw data set from features, activity_label, train and test files
2. For each X data sets, assign column names based on *features.txt* by adding them first to the data set using *rbind()* and then use the following script to change the column name from 'V1','V2',.. to more descriptive label : <br />
***colnames(xtest_char)<-as.character(unlist(xtest_char[2948,]))***  
3. Select only the **mean()** and **std()** measurements from the original data resulting only 66 variables out of 561 using *grepl()*.
4. Create **har_detail** data set by binding **train** and **test** data 
5. Create **har_summary** data set by averaging all measurements from **har_detail** by activity by subject
6. Displays structure of **har_detail** data set and outputs **har_summary** data set to **har_summary.txt** to the working directory

## License
Data used in this repository taken from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#
by
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012