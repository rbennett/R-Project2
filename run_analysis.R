# Assignment Requirements
#       Processes the data set described at
#               http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
#       Merging the training and the test sets to create one data set.
#       Extracts only the measurements on the mean and standard deviation for each measurement. 
#       Uses descriptive activity names to name the activities in the data set
#       Appropriately labels the data set with descriptive variable names. 
#       From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Make use of dplyr for selecting and summaries
library(dplyr)


# Read the activity and feature label files
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features        <- read.table("UCI HAR Dataset/features.txt")

# Function to process one set of data in either the train or test directories and create a column indicating the set
process_set <- function( set, features )  {
        # Read the subject, activity, and features
        subject         <- read.table(paste( "UCI HAR Dataset/", set , "/subject_", set, ".txt", sep="" ), col.names ="subject" )
        activity        <- read.table(paste( "UCI HAR Dataset/", set , "/y_",       set, ".txt", sep="" ), col.names ="activity")
        feature         <- read.table(paste( "UCI HAR Dataset/", set , "/X_",       set, ".txt", sep="" ), col.names = features )
        # Create a data frame with columns subject, activity, feature, and set
        df              <- data.frame(subject,activity,set,feature)
        # Add to the data frame additional columns for each combination of signal, axis, and fixed width window samples
        for(signal in c("body_acc_","body_gyro_","total_acc_")){
                for(axis in c("x_", "y_", "z_")){
                        cn <- NULL
                        for(fww in 1:128){
                                cn <- c(cn,paste(signal,axis,"fww", fww, sep=""))
                        }
                        axisfww <- read.table(paste( "UCI HAR Dataset/", set , "/Inertial Signals/", signal,axis,set, ".txt", sep=""), col.names = cn )
                        df <- cbind(df, axisfww)
                }
        }
        return(df)
}

# Run the function on both the training and test sets
training <- process_set("test",features[,2])
test     <- process_set("train", features[,2])
# Merge the two data frames to create one data set
merged   <- rbind(training,test)
# Extract mean and standard deviation for each measurement into a new dataframe
MeanAndStd <- select(merged, matches("subject"), matches("activity"), contains("mean"), contains("std"))
# Modify merged data frame to use the activity names
MeanAndStd$activity <- activity_labels[,2][MeanAndStd$activity]
# Create tidy data set with the average of each variable for each activity and each subject.
tds <- MeanAndStd      %>%
        group_by(activity, subject)  %>%
        summarise_each(funs(mean), -matches("activity"), -matches("subject"))

write.table(tds, file="TidyDataSet.txt", row.names=FALSE )




        