# CJHGetAndCleanData
Coursera - John Hopkins data science course project: Get And Clean Data

This script combines wearable health tracker test and train sets and filters to specific columns
use setwd() to set the working directory to the location of run_analysis.r
as long as the test and train data sets and the script are in the same folder the script will run

first the test and train data sets are pulled from a file into memory
followed by the column name files being read into memory
the name lists are applied to the test and train data frames
the subject data is then added to the test and train data frames
then the activity labels are added to the test and train data sets
the test and train data sets are combined into A1DF
the list of columns that have mean and standard deviation information are then gathered from the column name lists
the column list is then applied as a filter to the dataframe
finally the dataframe is aggregated with the average of each variable for each activity and subject

CodeBook.md has information on specific columns and variables.