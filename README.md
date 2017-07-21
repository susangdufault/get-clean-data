The Github repository https://github.com/susangdufault/get-clean-data forms part of my final assignment submission for the Coursera course Getting and Cleaning Data.

Data files for this assignment were downladed from:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Additional information about this dataset is available from:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The R script contained in the file "run_analysis.R"
- Creates a directory called "data" to house the downloaded data in my working directory ("C:/Users/Susan/Desktop/GettingAndCleaningDataCoursera/final-assignment/)
- Downloads the zip file containing the data and stores the download date in the variable dateDownloaded
- Unzips the data files into the "data" directory
- Reads and assembles the test and training data files and merges them into one dataset
- Extracts only those variables for which both the mean and standard deviation are provided, as identified by "mean()" and "std()" in the features names as described in the file "features_info.txt"
- Replaces activity classes with descriptive activity labels
- Labels the dataset with descriptive variable names
- Produces a text file as output that contains averages of the selected variables


The README.txt file included with the downloaded dataset contains additional information on this dataset.
