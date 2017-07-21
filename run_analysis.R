#This is the code for my final assignment for the Coursera Getting and Cleaning Data course
#The analysis was done on a PC running Windows 10 Home operating system, version 1607.
#The code was run using RStudio Version 1.0.136 (in "Run as Administrator" mode) with R version 3.3.3 (2017-03-06).

#Set working directory
setwd("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment")

#Create a subfolder to store the data in
if(!file.exists("data")){
        dir.create("data")
}

#Create a variable to store the URL where the data files are located
dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"	

#Download the zip file and save the date when the download occurred
download.file(dataURL, destfile = "./data/dataset.zip")
dateDownloaded <- date()

#Extract the contents of the zip file
unzip("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/dataset.zip",
      exdir = "C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data")

#Load the data files into data frames

#Create a vector of variable names from features.txt file
features <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
varnames <- as.character(features[ ,2])

#Create a vector of activity names from activity_labels.txt file
activities <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/activity_labels.txt")

#Assemble the training data into a single data frame
trainingSubjects <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names = "subject")
trainingSet <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = varnames)
trainingActivities <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/train/y_train.txt", header = FALSE, col.names = "activity")
allTrainingData <- cbind(trainingSubjects, trainingActivities, trainingSet)

#Assemble the test data into a single data frame

testSubjects <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names = "subject")
testSet <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = varnames)
testActivities <- read.table("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/data/UCI HAR Dataset/test/y_test.txt", header = FALSE, col.names = "activity")
allTestData <- cbind(testSubjects, testActivities, testSet)

#Join the training and test datasets

allData <- rbind(allTrainingData, allTestData)

#Extract only measurements with both mean and standard deviation calculated for each measurement

library(dplyr)
identifiers <- select(allData, subject, activity)
meanData <- select(allData, contains(".mean.", ignore.case = FALSE))
stdData <- select(allData, contains(".std.", ignore.case = FALSE))
meanstdData <- cbind(identifiers, meanData, stdData)

#Replace activity classes with descriptive activity names
nr <- nrow(meanstdData)
for(i in 1:nr){
        if(meanstdData[i,2] == 1){
                meanstdData[i,2] = "walking"}
}
for(i in 1:nr){
        if(meanstdData[i,2] == 2){
                meanstdData[i,2] = "walkingupstairs"}
}
for(i in 1:nr){
        if(meanstdData[i,2] == 3){
                meanstdData[i,2] = "walkingdownstairs"}
}
for(i in 1:nr){
        if(meanstdData[i,2] == 4){
                meanstdData[i,2] = "sitting"}
}
for(i in 1:nr){
        if(meanstdData[i,2] == 5){
                meanstdData[i,2] = "standing"}
}
for(i in 1:nr){
        if(meanstdData[i,2] == 6){
                meanstdData[i,2] = "laying"}
}		

#Label the dataset with descriptive variable names

library(stringr)
names(meanstdData) <- gsub("\\.", "", names(meanstdData))
names(meanstdData) <- tolower(names(meanstdData))
names(meanstdData) <- str_replace(names(meanstdData), "fbody", "frequencyofbody")
names(meanstdData) <- str_replace(names(meanstdData), "tbody", "timeofbody")
names(meanstdData) <- str_replace(names(meanstdData), "tgravity", "timeofgravity")
names(meanstdData) <- str_replace(names(meanstdData), "acc", "acceleration")
names(meanstdData) <- str_replace(names(meanstdData), "gyro", "velocity")
names(meanstdData) <- str_replace(names(meanstdData), "mag", "magnitude")
names(meanstdData) <- str_replace(names(meanstdData), "meanx", "meanofxaxis")
names(meanstdData) <- str_replace(names(meanstdData), "meany", "meanofyaxis")
names(meanstdData) <- str_replace(names(meanstdData), "meanz", "meanofzaxis")
names(meanstdData) <- str_replace(names(meanstdData), "stdx", "standarddeviationofxaxis")
names(meanstdData) <- str_replace(names(meanstdData), "stdy", "standarddeviationofyaxis")
names(meanstdData) <- str_replace(names(meanstdData), "stdz", "standdarddeviationofzaxis")
names(meanstdData) <- str_replace(names(meanstdData), "std", "standarddeviation")

#Create a second independent tidy data set with the average of each variable for each activity and each subject

library(dplyr)
groupedData <- group_by(meanstdData, subject, activity)
averageData <- summarize_all(groupedData, funs(mean))

#Output summary data to a text file

write.table(averageData, "C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/averagedata.txt", row.names=FALSE)

##End of file