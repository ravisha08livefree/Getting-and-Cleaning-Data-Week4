setwd("C:/Course era/Assignments/Cleaning Data Week4/UCI HAR Dataset")
library(data.table)
library(dplyr)

##Reading Test and Train data
X_test<-data.table(read.table("test/X_test.txt"))
X_train<-data.table(read.table("train/X_train.txt"))

##Reading test and train activity class
y_test<-data.table(read.table("test/y_test.txt"))
y_train<-data.table(read.table("train/y_train.txt"))

##Reading subject Data
subject_test<-data.table(read.table("test/subject_test.txt"))
subject_train<-data.table(read.table("train/subject_train.txt"))

#merging test(data+Subject+activity class) and train(data+Subject+activity class)
test<-cbind(y_test,subject_test,X_test)
train<-cbind(y_train,subject_train,X_train)

features<-data.table(read.table("features.txt"))
activity_labels<-data.frame(read.table("activity_labels.txt"))

head(features,n=15)

##1.Merges the training and the test sets to create one data set
X_merged<-rbind(test,train)

##2.Extracts only the measurements on the mean and standard deviation for each measurement
mean_std<-data.frame(X_merged[,1:8])

##3.Uses descriptive activity names to name the activities in the data set
##Note: merge all.x act as left join and work only on data frames, hence convert the format to data frame
mean_std_data_descriptive<-data.table(merge(x=mean_std,y=activity_labels,by="V1",all.x = TRUE))
names(mean_std_data_descriptive)

##4.Appropriately labels the data set with descriptive variable names
setnames(mean_std_data_descriptive,c("V1"  , "V1.1", "V1.2","V2.x" ,"V3" ,  "V4"  , "V5" ,  "V6"  , "V2.y"),
                                   c("ActivityClass","Subject","tBodyAcc-X","tBodyAcc-Y","tBodyAcc-Z","tBodyAcc-X","tBodyAcc-Y","tBodyAcc-z","ActivityName"))
names(mean_std_data_descriptive)

##5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidydata<-aggregate(mean_std_data_descriptive[,3:8],list(mean_std_data_descriptive$ActivityName,mean_std_data_descriptive$Subject),mean)
colnames(tidydata)[1] <- "ActivityName"
colnames(tidydata)[2] <- "Subject"

#checking dim of tidydata
dim(tidydata)  ##Ans- 180*8

write.table(tidydata, file = "./tidydata.txt", row.names = FALSE, col.names = TRUE)