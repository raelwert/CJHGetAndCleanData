Contents:
the analysis results are in Answer.csv

Variable names: features.txt
Activity labels: activity_labels.txt

/train:
Measurements: x_train
Activity keys: y_train.txt
Subject keys: subject_train.txt

/test is identical to /train

subject is a key for the test subject being measured by the wearable
activity is a label of the activity being performed Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying
 then appended with -mean() for the mean of the mean activity values and -std() for the mean of standard deviation of the activity values after aggregation by the subject

Subject : int
Activity : Factor w/ 6 levels
tBodyAcc-mean()-X : num
tBodyAcc-mean()-Y : num
tBodyAcc-mean()-Z : num
tGravityAcc-mean()-X : num
tGravityAcc-mean()-Y : num
tGravityAcc-mean()-Z : num
tBodyAccJerk-mean()-X : num
tBodyAccJerk-mean()-Y : num
tBodyAccJerk-mean()-Z : num
tBodyGyro-mean()-X : num
tBodyGyro-mean()-Y : num
tBodyGyro-mean()-Z : num
tBodyGyroJerk-mean()-X : num
tBodyGyroJerk-mean()-Y : num
tBodyGyroJerk-mean()-Z : num
tBodyAccMag-mean() : num
tGravityAccMag-mean() : num
tBodyAccJerkMag-mean() : num
tBodyGyroMag-mean() : num
tBodyGyroJerkMag-mean() : num
fBodyAcc-mean()-X : num
fBodyAcc-mean()-Y : num
fBodyAcc-mean()-Z : num
fBodyAccJerk-mean()-X : num
fBodyAccJerk-mean()-Y : num
fBodyAccJerk-mean()-Z : num
fBodyGyro-mean()-X : num
fBodyGyro-mean()-Y : num
fBodyGyro-mean()-Z : num
fBodyAccMag-mean() : num
fBodyBodyAccJerkMag-mean : num()
fBodyBodyGyroMag-mean() : num
fBodyBodyGyroJerkMag-mean() : num
tBodyAcc-std()-X : num
tBodyAcc-std()-Y : num
tBodyAcc-std()-Z : num
tGravityAcc-std()-X : num
tGravityAcc-std()-Y : num
tGravityAcc-std()-Z : num
tBodyAccJerk-std()-X : num
tBodyAccJerk-std()-Y : num
tBodyAccJerk-std()-Z : num
tBodyGyro-std()-X : num
tBodyGyro-std()-Y : num
tBodyGyro-std()-Z : num
tBodyGyroJerk-std()-X : num
tBodyGyroJerk-std()-Y : num
tBodyGyroJerk-std()-Z : num
tBodyAccMag-std() : num
tGravityAccMag-std() : num
tBodyAccJerkMag-std() : num
tBodyGyroMag-std() : num
tBodyGyroJerkMag-std() : num
fBodyAcc-std()-X : num
fBodyAcc-std()-Y : num
fBodyAcc-std()-Z : num
fBodyAccJerk-std()-X : num
fBodyAccJerk-std()-Y : num
fBodyAccJerk-std()-Z : num
fBodyGyro-std()-X : num
fBodyGyro-std()-Y : num
fBodyGyro-std()-Z : num
fBodyAccMag-std() : num
fBodyBodyAccJerkMag-std : num()
fBodyBodyGyroMag-std() : num
fBodyBodyGyroJerkMag-std() : num