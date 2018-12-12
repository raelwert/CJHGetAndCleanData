#Script Processing

first the test and train data sets are pulled from a file into memory
followed by the column name files being read into memory
the name lists are applied to the test and train data frames
the subject data is then added to the test and train data frames
then the activity labels are added to the test and train data sets
the test and train data sets are combined into A1DF
the list of columns that have mean and standard deviation information are then gathered from the column name lists
the column list is then applied as a filter to the dataframe
finally the dataframe is aggregated with the average of each variable for each activity and subject

#Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

these values were then appended with -mean() for the mean of the mean activity values and -std() for the mean of standard deviation of the activity values after aggregation by the subject

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