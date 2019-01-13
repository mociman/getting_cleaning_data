# load all libraries needed
library(plyr)
library(dplyr)

##set environment variables, point this to your data sets folder
# setwd("E:/Learning/Repos/getting_cleaning_data/")

# change this if you prefer to put the files in a sub folder in your working directory
data_location <- ""
file_location <- paste0(getwd(),data_location)


##prepare datasets from files
features <- read.csv(paste0(file_location,"/features.txt"), header=FALSE, sep="", 
                     stringsAsFactors = FALSE )
features <- tbl_df(features)
## create column_names set -- will be used for x sets
column_names <- as.data.frame(t(features[,2]))

## get activities description/name
activity_labels <- read.csv(paste0(file_location,"/activity_labels.txt"), header=FALSE, sep="", 
                            stringsAsFactors = FALSE)
activity_labels <- tbl_df(activity_labels)
names(activity_labels) <- c("id","activity_name")


### PROCESS TEST DATA
subject_test <- read.csv(paste0(file_location,"/test/subject_test.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
subject_test <- tbl_df(subject_test)
names(subject_test) <- "subject"

xtest <- read.csv(paste0(file_location,"/test/X_test.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
xtest <- tbl_df(xtest)

ytest <- read.csv(paste0(file_location,"/test/y_test.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
ytest <- tbl_df(ytest)
names(ytest) <- "activity"

## this part is to assign column names to xtest using features file
#first add column_names to xtest_char
xtest_char <- mutate_all(xtest,as.character)
xtest_char <- rbind(xtest_char, column_names)

# change column name using the newly added row
colnames(xtest_char)<-as.character(unlist(xtest_char[2948,]))

#restructured xtest data
xtest_char <- xtest_char[-2948,]

#select only mean() and std()
i <- grepl("mean\\(\\)|std\\(\\)",names(xtest_char))
xtest_char <- xtest_char[,i]

#convert back to numeric/double and assign to xtest
## xtest now have descriptive attribute name 
xtest<-mutate_all(xtest_char,as.double)

# create test dataset
test <- cbind(subject_test,ytest,xtest)

# merge with activity label
test <- merge(test,activity_labels, by.x="activity",by.y="id", all=TRUE)
test <- select(test,activity_name,subject,3:68)


### PROCESS TRAIN DATA
subject_train <- read.csv(paste0(file_location,"/train/subject_train.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
subject_train <- tbl_df(subject_train)
names(subject_train) <- "subject"

ytrain <- read.csv(paste0(file_location,"/train/y_train.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
ytrain <- tbl_df(ytrain)
names(ytrain) <- "activity"

xtrain <- read.csv(paste0(file_location,"/train/X_train.txt"), header=FALSE, sep="", stringsAsFactors = FALSE)
xtrain <- tbl_df(xtrain)

## this part is to assign column names to xtrain using features file
# proceed to add column_names to xtrain_char
xtrain_char <- mutate_all(xtrain,as.character)
xtrain_char <- rbind(xtrain_char, column_names)

# change column name using the newly added row
colnames(xtrain_char)<-as.character(unlist(xtrain_char[7353,]))

#restructured xtrain data
xtrain_char <- xtrain_char[-7353,]
xtrain_char <- xtrain_char[,i]

#convert back to numeric/double
## now xtrain have descriptive column names
xtrain<-mutate_all(xtrain_char,as.double)

# create train dataset
train <- cbind(subject_train,ytrain,xtrain)

# merge with activity label
train <- merge(train,activity_labels, by.x="activity",by.y="id", all=TRUE)
train <- select(train,activity_name,subject,3:68)

#bind train and test
har_detail <- rbind(train,test)
str(har_detail)

#create separate dataset with average of each variable for each activity and 
#each subject
har_summary<-ddply(har_detail,.(activity_name,subject),numcolwise(mean))
View(har_summary)

# create har_summary text file
write.table(har_summary, paste0(getwd(),"/har_summary.txt"), row.names=FALSE)