R-Project2
==========

Project for Coursera Course Getting and Cleaning Data



This repository was created to submit the "Getting and Cleaning Data" Coursera Course Project. It contains a R Program (run_analysis.R) which uses the data available from this source

 http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
 
 
and produces a data set with the averages of selected feature vector variables from the original source above. The program assumes the input data is stored in the working directory as a sub-directory named "UCI HAR Dataset" and generates a file named TidyDataSet.txt.

The script reads data from the original study using a function that given a parameter corresponding to the naming of the test and training data sets, creates a data frame with 1716 variables that includes the subject, activity, data set, feature vector, and 128 fixed width overlapping window samples for each of the smartphone sensors.  This functions is executed for each data set and then the two resulting data frames are combined. 
  
With the merged data frame, we extract any column with mean or std (standard deviation) in the column name, using the dplyr package.   Then we replace the numeric acitivity numbers with names using the activity labels and again use the dplyr package in a chained sequence to average the extracted columns grouped by activity/participant.

The last operation writes the resulting data frame TidyDataFrame.txt



<center><big>Code Book</big></center>
The data set generated contains the following columns
<br>

<table>
<tr><td>COLUMN NAME</td><td>DESCRIPTION</td></tr>
<tr>
<td>activity</td>
<td> one from { WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING }</td>
</tr>
<tr>
<td>subject</td>
<td>person performing the activity (Number from 1 to 30)</td>
</tr>
<tr><td>tBodyAcc.mean...X</td><td>Average of this feature variable for subject and activity</td></tr>
<tr><td>tBodyAcc.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAcc.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAcc.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAccMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerkMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerkMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.meanFreq...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.meanFreq...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.meanFreq...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.meanFreq...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.meanFreq...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.meanFreq...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.mean...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.mean...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.mean...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.meanFreq...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.meanFreq...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.meanFreq...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccMag.meanFreq..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyAccJerkMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyAccJerkMag.meanFreq..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroMag.meanFreq..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroJerkMag.mean..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroJerkMag.meanFreq..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.tBodyAccMean.gravity.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.tBodyAccJerkMean..gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.tBodyGyroMean.gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.tBodyGyroJerkMean.gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.X.gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.Y.gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>angle.Z.gravityMean.</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAcc.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAcc.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAcc.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAcc.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerk.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyro.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerk.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tGravityAccMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyAccJerkMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>tBodyGyroJerkMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAcc.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccJerk.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.std...X</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.std...Y</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyGyro.std...Z</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyAccMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyAccJerkMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>
<tr><td>fBodyBodyGyroJerkMag.std..</td><td>Average of this feature vector variable for all activities performed by the subject</td></tr>

</table>
