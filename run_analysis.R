library(data.table)

WorkingDir <- getwd()

#read the training data into memory
Train <- fread(file.path(WorkingDir, "train", "X_train.txt"))
TrainLabelKeys <- fread(file.path(WorkingDir, "train", "y_train.txt"))
TrainSubject <- fread(file.path(WorkingDir, "train", "subject_train.txt"))

#read the test data into memory
Test <- fread(file.path(WorkingDir, "test", "X_test.txt"))
TestLabelKeys <- fread(file.path(WorkingDir, "test", "y_test.txt"))
TestSubject <- fread(file.path(WorkingDir, "test", "subject_test.txt"))

#read the column Names and activity labels into memory
Features <- fread(file.path(WorkingDir, "features.txt"))
ActivityLabels <- fread(file.path(WorkingDir, "activity_labels.txt"))

#add the column names to the test data
names(Test) <- Features$V2

#add the column names to the test data
names(Train) <- Features$V2

#add the subject data to the test data frame
Test$Subject <- TestSubject$V1

#add the subject data to the train data frame
Train$Subject <- TrainSubject$V1

#add the activity labels to the test data
Test$Activity <- factor(TestLabelKeys$V1, levels = ActivityLabels$V1, labels = ActivityLabels$V2)

#add the activity labels to the train data
Train$Activity <- factor(TrainLabelKeys$V1, levels = ActivityLabels$V1, labels = ActivityLabels$V2)

#Answer one Data Frame, merges the training and the test sets to create one data set
A1DF <- c(Test, Train)

#get list of column names for next answer
A2Names <- c(names(A1DF)[c(grep("-mean[(])", names(A1DF)), grep("-std[(])", names(A1DF)))], 'Subject', 'Activity')

#Answer two Data Frame, extracts only the measurements on the mean and standard deviation for each measurement
A2DF <- A1DF[A2Names]

#Answer five Data Frame, rom the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject
TidyDataSet <- aggregate(.~Subject+Activity, A2DF, mean)

#write that table for the other part of the answer
#write.table(TidyDataSet, file = "TidyDataSet.csv", row.names = FALSE)

listed = ls()

list.append(listed, "list")

listed = listed[listed != "TidyDataSet"]

rm(list = listed)