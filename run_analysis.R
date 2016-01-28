##Be sure to set your working directory to the same directory where you downloaded the files as explained in the README.md

run_analysis <- function(){

  #load all "features" (i.e. variables) being measured and assign column names...
  #...these "features" will later be used to create column names for the test and train results
  feature <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureID", "featureLabel"), stringsAsFactors = FALSE)

  #load all activity types and assign column names
  activity <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityID", "activityName"))

  #load all test subjects, results and activity label ID numbers and assign column names
  testSubjects = read.table("UCI HAR Dataset/test/subject_test.txt", col.names="subjectID")
  testActivity = read.table("UCI HAR Dataset/test/Y_test.txt", col.names="activityID")
  testResults = read.table("UCI HAR Dataset/test/X_test.txt")
  colnames(testResults) <- t(feature$featureLabel)

  #load all train subjects, results and activity label ID numbers and assign column names
  trainSubjects = read.table("UCI HAR Dataset/train/subject_train.txt", col.names="subjectID")
  trainActivity = read.table("UCI HAR Dataset/train/Y_train.txt", col.names="activityID")
  trainResults = read.table("UCI HAR Dataset/train/X_train.txt")
  colnames(trainResults) <- t(feature$featureLabel)

  #merge the test and train data using rbind
  mergedSubjects <- rbind(testSubjects, trainSubjects)
  mergedResults <- rbind(testResults, trainResults)
  mergedActivity <- rbind(testActivity, trainActivity)

  #merge the subjects, results, and activity lables tables into one giant data frame using cbind
  allData <- cbind(mergedSubjects, mergedResults, mergedActivity)

  #merge this data frame with the activity labels from the activity data frame on the key activityID
  allData2 <- merge(allData, activity, by="activityID")

  #extract only measurements on mean and SD for each feature/variable, and keep the ID and activityName variables
  extractedData <- allData2[, grep("-mean\\(\\)|-std\\(\\)|ID|Name", names(allData2))]

  #reorder the columns to be more readable i.e. subjectID, activityName, then features. Removes activityID.
  extractedData <- extractedData[c(2,69,3:68)]

  #Clean up the column names
  names(extractedData) <- gsub("\\(|\\)", "", names(extractedData))

  #Create a second, tidy data set with the average of each variable for each activity and each subject
  meanData <- aggregate(. ~subjectID + activityName, extractedData, mean)
  write.table(meanData, "meanData.txt", row.names = FALSE)
}
