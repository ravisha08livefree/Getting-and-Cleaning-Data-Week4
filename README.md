# Getting-and-Cleaning-Data-Week4
Final Assignment for Week 4

# Purpose of the assignment is as follows:
\\Create one R script called run_analysis.R that does the following:

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names.
5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# About the data
Data zip file has to be downloaded from the link provided in the assignmnet and is called into R objects. Following are the files provided for creating a meaningful data set on which cleaning is to be performed:
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

# How the script works
- Step1: Reading the data from the above mentioned files
- Step2: Merging the data using Rbind and Cbind is such a manner that while merging, there rows and columns are in exact sync.
- Step3: Exttracting the columns on which the mean and standard deviation is to be calculated using subsetting
- Step4: Renaming the columns with appropriate description using colnames and setnames function
- Step5: Calculating mean and std deviation on the basis of subject and activity using the aggregate function

# Final tidydata
writing the cleaned data into tidydata.txt using the write.table command
