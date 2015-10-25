# Data Dictionary 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The 't' in the nomenclature signifies the signal is a time domain vector. 'f' signifies the signal is that of a frequency domain. 

'-mean()' in the suffix signifies the mean variable was estimated for the corresponding feature signals. '-std()' signifies the standard deviation was estimated from the corresponding feature signals.

'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Column 1 - "Activity" 

Activity is the name of the action undertaken by the volunteer.

## Column 2- "Volunteer" 

A unique ID given to each of the 30 volunteers who participated in the experiment. 

## Column 3-5

* "tBodyAcc-mean()-X" 
* "tBodyAcc-mean()-Y"
* "tBodyAcc-mean()-Z"

BodyAcc-mean are obtained as the first of component of acceleration from the inbuilt accelerometer sensor. They are a measure of subject's body acceleration across the X,Y&Z axes. 

## Column 6-8

* "tGravityAcc-mean()-X"
* "tGravityAcc-mean()-Y"
* "tGravityAcc-mean()-Z"

GravityAcc-mean is a mean variable obtained as the second of component of acceleration from the inbuilt accelerometer sensor. They are a measure of subject's acceleration due to the influence of gravity across the X,Y&Z axes. 

## Column 9-11

* "tBodyAccJerk-mean()-X"
* "tBodyAccJerk-mean()-Y"
* "tBodyAccJerk-mean()-Z"

Jerk is measured as a change in acceleration. It is captured from the inbuilt accelerometer sensor. They are a measure of subject's change in the rate of acceleration across the X,Y&Z axes. 

## Column 12-14

* "tBodyGyro-mean()-X"
* "tBodyGyro-mean()-Y"
* "tBodyGyro-mean()-Z"

BodyGyro-mean is obtained from the inbuilt gyroscope sensor. They are a measure of subject's orientation in the space across the X,Y&Z axes. 

## Column 15-17

* "tBodyGyroJerk-mean()-X"
* "tBodyGyroJerk-mean()-Y"
* "tBodyGyroJerk-mean()-Z"

BodyGyroJerk-mean is obtained from the inbuilt gyroscope sensor. They are a measure of rate of change in subject's orientation/angular velocity in the space across the X,Y&Z axes. 

## Column 18

* "tBodyAccMag-mean()"

BodyAcc-mean is captured from the magnitude of the linear acceleration signals, calculated using the Euclidean norm in the time domain.

## Column 19

* "tGravityAccMag-mean()"

GravityAcc-mean is captured from the magnitude of the linear acceleration signals, calculated using the Euclidean norm in the time domain.

## Column20
* "tBodyAccJerkMag-mean()"

BodyAccJerk-mean is captured from the magnitude of Jerk from the linear acceleration signals, calculated using the Euclidean norm in the time domain.

## Column 21

* "tBodyGyroMag-mean()"

BodyGyroMag-mean is captured from the magnitude of the angular acceleration signals, calculated using the Euclidean norm in the time domain.

## Column 22

"tBodyGyroJerkMag-mean()"
BodyGyroJerkMag-mean is captured from the magnitude of Jerk from the angular acceleration signals, calculated using the Euclidean norm in the time domain.

## Column 23-28

* "fBodyAcc-mean()-X"
* "fBodyAcc-mean()-Y"
* "fBodyAcc-mean()-Z"
* "fBodyAcc-meanFreq()-X"
* "fBodyAcc-meanFreq()-Y"
* "fBodyAcc-meanFreq()-Z"

Fast Fourier Transform (FFT) was applied to the signal time domain signal "tBodyAcc-mean" producing these frequency domain componenets along the X, Y & Z axes.  

## Column 29-34

* "fBodyAccJerk-mean()-X"
* "fBodyAccJerk-mean()-Y"
* "fBodyAccJerk-mean()-Z"
* "fBodyAccJerk-meanFreq()-X"
* "fBodyAccJerk-meanFreq()-Y"
* "fBodyAccJerk-meanFreq()-Z"

Fast Fourier Transform (FFT) was applied to the signal time domain signal "tBodyAccJerk-mean" producing these frequency domain componenets along the X, Y & Z axes.  

## Column 35-40

* "fBodyGyro-mean()-X"
* "fBodyGyro-mean()-Y"
* "fBodyGyro-mean()-Z"
* "fBodyGyro-meanFreq()-X"
* "fBodyGyro-meanFreq()-Y"
* "fBodyGyro-meanFreq()-Z"

Fast Fourier Transform (FFT) was applied to the signal time domain signal "tBodyGyroJerk-mean" producing these frequency domain componenets along the X, Y & Z axes.  

## Column 41-48

* "fBodyAccMag-mean()"
* "fBodyAccMag-meanFreq()"
* "fBodyBodyAccJerkMag-mean()"
* "fBodyBodyAccJerkMag-meanFreq()"
* "fBodyBodyGyroMag-mean()"
* "fBodyBodyGyroMag-meanFreq()"
* "fBodyBodyGyroJerkMag-mean()"
* "fBodyBodyGyroJerkMag-meanFreq()"

Fast Fourier Transform (FFT) was applied to the signal time domain signals of corresponding Jerk and Magnitude values producing these frequency domain componenets along the X, Y & Z axes.  

## Column 49-54

* "tBodyAcc-std()-X"
* "tBodyAcc-std()-Y"
* "tBodyAcc-std()-Z"
* "tGravityAcc-std()-X"
* "tGravityAcc-std()-Y"
* "tGravityAcc-std()-Z"

BodyAcc-std and GravityAcc-std are the standard deviation values obtained as the two components of acceleration from the inbuilt accelerometer sensor. They are a measure of subject's own acceleration as well as one due to the influence of gravity across the X,Y&Z axes. 

## Column 55-57

* "tBodyAccJerk-std()-X"
* "tBodyAccJerk-std()-Y"
* "tBodyAccJerk-std()-Z"

Jerk is measured as a change in acceleration. BodyAccJerk-std() is a standard deviation variable and is captured from the inbuilt accelerometer sensor. They are a measure of subject's change in the rate of acceleration across the X,Y&Z axes. 

## Column 58-60

* "tBodyGyro-std()-X"
* "tBodyGyro-std()-Y"
* "tBodyGyro-std()-Z"

BodyGyro-std is a standard deviation variable obtained from the inbuilt gyroscope sensor. They are a measure of subject's orientation in the space across the X,Y&Z axes. 

## Column 61-63

* "tBodyGyroJerk-std()-X"
* "tBodyGyroJerk-std()-Y"
* "tBodyGyroJerk-std()-Z"

BodyGyroJerk-std is a standard deviation variable obtained from the inbuilt gyroscope sensor. They are a measure of rate of change of subject's orientation in the space across the X,Y&Z axes. 

## Column 64-68

* "tBodyAccMag-std()"
* "tGravityAccMag-std()"
* "tBodyAccJerkMag-std()"
* "tBodyGyroMag-std()"
* "tBodyGyroJerkMag-std()"

Corresponding 'Mag' observations are the standard deviation of magnitude of the three-dimensional signals and were calculated using the Euclidean norm.

## Column 69-71

* "fBodyAcc-std()-X"
* "fBodyAcc-std()-Y"
* "fBodyAcc-std()-Z"

Fast Fourier Transform (FFT) of the linear body acceleration - std value in the time domain in the X,Y & Z axes. 

## Column 72-74

* "fBodyAccJerk-std()-X"
* "fBodyAccJerk-std()-Y"
* "fBodyAccJerk-std()-Z"

Fast Fourier Transform (FFT) of the linear jerk parameter in the time domain in the X,Y & Z axes. 

## Column 75-77

* "fBodyGyro-std()-X"
* "fBodyGyro-std()-Y"
* "fBodyGyro-std()-Z"

Fast Fourier Transform (FFT) of the angular velocity - std parameter in the time domain in the X,Y & Z axes. 


## Column 78-81

* "fBodyAccMag-std()"
* "fBodyBodyAccJerkMag-std()"
* "fBodyBodyGyroMag-std()"
* "fBodyBodyGyroJerkMag-std()"

Corresponding 'Mag' observations are the standard deviation of magnitude of the three-dimensional signals and were calculated using the Euclidean norm.
