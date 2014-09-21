## Load data
X_test<-read.table("Downloads/UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("Downloads/UCI HAR Dataset/test/y_test.txt")
subject_test<-read.table("Downloads/UCI HAR Dataset/test/subject_test.txt")
X_train<-read.table("Downloads/UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("Downloads/UCI HAR Dataset/train/y_train.txt")
subject_train<-read.table("Downloads/UCI HAR Dataset/train/subject_train.txt")
activity_labels<-read.table("Downloads/UCI HAR Dataset/activity_labels.txt")
features<-read.table("Downloads/UCI HAR Dataset/features.txt")

## Merge the test and training sets
merged_X<-rbind(X_test,X_train)
merged_y<-rbind(y_test,y_train)
merged_subject<-rbind(subject_test,subject_train)

## Extracts only the measurements on the mean and standard deviation for each measurement. 
colnames(merged_X)<-features[,2]
merged_X<-merged_X[grepl("std()|mean()",as.character(colnames(merged_X)))]
## Delete the mean frequency entries that were included
merged_X<-merged_X[!grepl("meanFreq",as.character(colnames(merged_X)))]

## Add activity and subject columns to the merged data set
merged_X<-cbind(merged_y,merged_X)
colnames(merged_X)[1]<-"Activity"
merged_X<-cbind(merged_subject,merged_X)
colnames(merged_X)[1]<-"Subject"

## Rename total data frame as merge for clarity
merge<-merged_X

## Uses descriptive activity names to name the activities in the data set
merge$Activity<-sub("1",activity_labels[1,2],merge$Activity)
merge$Activity<-sub("2",activity_labels[2,2],merge$Activity)
merge$Activity<-sub("3",activity_labels[3,2],merge$Activity)
merge$Activity<-sub("4",activity_labels[4,2],merge$Activity)
merge$Activity<-sub("5",activity_labels[5,2],merge$Activity)
merge$Activity<-sub("6",activity_labels[6,2],merge$Activity)

## Use dplyr to find mean of each category by Subject and Activity
## yay for dplyr!!! this was really easy using dplyr
library(dplyr)
tidy_data<-merge %>% group_by(Subject,Activity) %>% summarise_each(funs(mean))

## Output result
write.table(tidy_data,file="tidy_table.txt",row.names=FALSE)