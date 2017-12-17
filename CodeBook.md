## Code Book for understanding the script variables

# Variables in the tidy data
 There are 180 rows and 8 columns in the tidydata. The first two variables are the dimensions on which the group by is performed which is the subject and activity name. The rest of the variables are acceleration and gyro variables on X,Y,Z axis.
 
 # The data is grouped by on the basis of Activity name and Subject whose values follows as below:
 - Activity Name:
 1.WALKING
 2.WALKING_UPSTAIRS
 3.WALKING_DOWNSTAIRS
 4.SITTING
 5.STANDING
 6.LAYING
 
 - Subject: Varies from 1 till 30
 
# Labels of the tidy data:

1."activitylabel"
2."subject"
3."tBodyAcc-mean()-X"
4."tBodyAcc-mean()-Y"
5."tBodyAcc-mean()-Z"
6."tBodyAcc-std()-X"
7."tBodyAcc-std()-Y"
8."tBodyAcc-std()-Z"

# Class of Variables:
1."activitylabel" - Factor
2."subject" - Integer
3."tBodyAcc-mean()-X" - Numeric
4."tBodyAcc-mean()-Y" - Numeric
5."tBodyAcc-mean()-Z" - Numeric
6."tBodyAcc-std()-X" - Numeric
7."tBodyAcc-std()-Y" - Numeric
8."tBodyAcc-std()-Z" - Numeric
 
 
