# GettingandCleaningData
## The is the readme file for assistance of run_analysis.R
## Variables used-
## All the data frames that are obtained from the data provided are given the same name as the datafiles
## e.g- X_train,X_test,y_train,y_test,subject_train,subject_test etc
## The column names in data frames are same as the features that are given in the file features.txt
## X_train_new and X_text_new data frames are subset of X_train and X_test data frame respectively
## These new data frames have the measurements of mean and std in columns only
## X_merge is data frame that is formed after joining of the two data frames
## Data is independents tidy data frame with the average of each variable for each activity and each subject
## Working-
## Line 1-12 The data sets and vectors are declared,features is initially have 2 columns,the 2nd column contains features
## Line 13-14 Column names of the X_train and X_test data sets have taken from feature variable 
## Line 16-17 mean and std are vectors containing index of the columns that have measurements of mean and std
## Line 20-22 New data frames having having measurement of mean and std are formed


