#Getting and Cleaning Data Assignment

##Codebook

###Background
This codebook provides information on the data, variables, and transformations performed to complete the Getting and Cleaning Data course Assignment.  

###Data
The orginal data, called the "Human Activity Recognition Using Smartphones Dataset," was downloaded from the following URL:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  

More information on this project can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Transformations

#####The associated R Script (run_analysis.R) performs the following actions to the above data once it is downloaded (see README):

1. Loads the names of the features (i.e. measurements) and activities
2. Loads the subjects, features, and activity ID data for each of the two data sets: test and training.
3. Assigns the names in step 1 to the column names for the data frames created in step 2.
4. Merges the training and test sets together, producing one data frame with all of the subjects, features, and activity types for the test and training data sets.
5. Merges with the activity names and removes activity ID numbers for easier handling and readability.
6. Extracts only the mean and standard deviation measurements from among the features (i.e. variables).
7. From the above dataset, creates a second, independent dataset with the average of each feature extracted in step 3, for each activity and each subject i.e. 180 observations (30 subjects X six activities).

###Variables (for the dataset produced in step 7):

subjectID:  Identifies the subject who performed the activity for each sample, ranges from 1 to 30.

activityName: The activity peformed to generate each sample, ranging from WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

_See above websites for more information on the below variables._  
_Dataset values for each variable below are the average/mean for all feature measurements by subject and activity._

tBodyAcc-mean-X

tBodyAcc-mean-Y

tBodyAcc-mean-Z

tBodyAcc-std-X

tBodyAcc-std-Y

tBodyAcc-std-Z
       
tGravityAcc-mean-X

tGravityAcc-mean-Y
      
tGravityAcc-mean-Z
       
tGravityAcc-std-X 
     
tGravityAcc-std-Y  
     
tGravityAcc-std-Z

tBodyAccJerk-mean-X
   
tBodyAccJerk-mean-Y
      
tBodyAccJerk-mean-Z

tBodyAccJerk-std-X

tBodyAccJerk-std-Y        

tBodyAccJerk-std-Z       

tBodyGyro-mean-X          

tBodyGyro-mean-Y          

tBodyGyro-mean-Z          

tBodyGyro-std-X          

tBodyGyro-std-Y           

tBodyGyro-std-Z           

tBodyGyroJerk-mean-X      

tBodyGyroJerk-mean-Y     

tBodyGyroJerk-mean-Z      

tBodyGyroJerk-std-X       

tBodyGyroJerk-std-Y       

tBodyGyroJerk-std-Z      

tBodyAccMag-mean          

tBodyAccMag-std           

tGravityAccMag-mean       

tGravityAccMag-std       

tBodyAccJerkMag-mean      

tBodyAccJerkMag-std       

tBodyGyroMag-mean         

tBodyGyroMag-std         

tBodyGyroJerkMag-mean     

tBodyGyroJerkMag-std      

fBodyAcc-mean-X           

fBodyAcc-mean-Y          

fBodyAcc-mean-Z           

fBodyAcc-std-X            

fBodyAcc-std-Y            

fBodyAcc-std-Z           

fBodyAccJerk-mean-X       

fBodyAccJerk-mean-Y       

fBodyAccJerk-mean-Z       

fBodyAccJerk-std-X       

fBodyAccJerk-std-Y        

fBodyAccJerk-std-Z        

fBodyGyro-mean-X          

fBodyGyro-mean-Y         

fBodyGyro-mean-Z          

fBodyGyro-std-X           

fBodyGyro-std-Y           

fBodyGyro-std-Z          

fBodyAccMag-mean          

fBodyAccMag-std           

fBodyBodyAccJerkMag-mean  

fBodyBodyAccJerkMag-std  

fBodyBodyGyroMag-mean     

fBodyBodyGyroMag-std      

fBodyBodyGyroJerkMag-mean

fBodyBodyGyroJerkMag-std

