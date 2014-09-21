getting-cleaning-data-project
=============================
DESCRIPTION OF run_analysis.R

The code provided will:
1) Load the data
2) Merge testing and training sets
3) Extract only the measurements on the mean and standard deviation for each measurement. 
4) Add descriptive titles to the activity names
5) Find the mean of each category by Subject and Activity


CODE BOOK
Variable	Quantity	Description
Subject	1-30	Code to identify participant
Activity	"LAYING", "SITTING", "STANDING", "WALKING", "WALKING_DOWNSTAIRS", "WALKING_UPSTAIRS"	Exercise Activity
The following are measurements that relate to the mean and standard deviation of different measurements.
"tBodyAcc-mean()-X"           
"tBodyAcc-mean()-Y"          
"tBodyAcc-mean()-Z"           
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"           
"tGravityAcc-mean()-X"
"tGravityAcc-mean()-Y"       
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"        
"tBodyAccJerk-mean()-X"
"tBodyAccJerk-mean()-Y"      
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"       
"tBodyGyro-mean()-X"          
"tBodyGyro-mean()-Y"         
"tBodyGyro-mean()-Z"          
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"           
"tBodyGyro-std()-Z"          
"tBodyGyroJerk-mean()-X"      
"tBodyGyroJerk-mean()-Y"     
"tBodyGyroJerk-mean()-Z"      
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"       
"tBodyGyroJerk-std()-Z"      
"tBodyAccMag-mean()"          
"tBodyAccMag-std()"          
"tGravityAccMag-mean()"       
"tGravityAccMag-std()"       
"tBodyAccJerkMag-mean()"      
"tBodyAccJerkMag-std()"      
"tBodyGyroMag-mean()"         
"tBodyGyroMag-std()"         
"tBodyGyroJerkMag-mean()"     
"tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"           
"fBodyAcc-mean()-Y"          
"fBodyAcc-mean()-Z"           
"fBodyAcc-std()-X"           
"fBodyAcc-std()-Y"            
"fBodyAcc-std()-Z"           
"fBodyAccJerk-mean()-X"       
"fBodyAccJerk-mean()-Y"      
"fBodyAccJerk-mean()-Z"       
"fBodyAccJerk-std()-X"       
"fBodyAccJerk-std()-Y"        
"fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"          
"fBodyGyro-mean()-Y"         
"fBodyGyro-mean()-Z"          
"fBodyGyro-std()-X"          
"fBodyGyro-std()-Y"           
"fBodyGyro-std()-Z"          
"fBodyAccMag-mean()"          
"fBodyAccMag-std()"          
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyAccJerkMag-std()"  
"fBodyBodyGyroMag-mean()"     
"fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()" 