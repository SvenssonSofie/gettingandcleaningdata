The data set contains of the first two columns "subject" and "activity" where subject represent one of the users each from 1-30. 
The activities are 
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
and for each combination the mean of the features are calculated. The features represent one column each and the column names
are
 [1] "subject"                     "activity"                    "tBodyAcc-std()-X"           
 [4] "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"            "tGravityAcc-std()-X"        
 [7] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-std()-X"       
[10] "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"        "tBodyGyro-std()-X"          
[13] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-std()-X"      
[16] "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"       "tBodyAccMag-std()"          
[19] "tGravityAccMag-std()"        "tBodyAccJerkMag-std()"       "tBodyGyroMag-std()"         
[22] "tBodyGyroJerkMag-std()"      "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"           
[25] "fBodyAcc-std()-Z"            "fBodyAccJerk-std()-X"        "fBodyAccJerk-std()-Y"       
[28] "fBodyAccJerk-std()-Z"        "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"          
[31] "fBodyGyro-std()-Z"           "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-std()"  
[34] "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-std()"  "tBodyAcc-mean()-X"          
[37] "tBodyAcc-mean()-Y"           "tBodyAcc-mean()-Z"           "tGravityAcc-mean()-X"       
[40] "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tBodyAccJerk-mean()-X"      
[43] "tBodyAccJerk-mean()-Y"       "tBodyAccJerk-mean()-Z"       "tBodyGyro-mean()-X"         
[46] "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyroJerk-mean()-X"     
[49] "tBodyGyroJerk-mean()-Y"      "tBodyGyroJerk-mean()-Z"      "tBodyAccMag-mean()"         
[52] "tGravityAccMag-mean()"       "tBodyAccJerkMag-mean()"      "tBodyGyroMag-mean()"        
[55] "tBodyGyroJerkMag-mean()"     "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[58] "fBodyAcc-mean()-Z"           "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"      
[61] "fBodyAccJerk-mean()-Z"       "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[64] "fBodyGyro-mean()-Z"          "fBodyAccMag-mean()"          "fBodyBodyAccJerkMag-mean()" 
[67] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroJerkMag-mean()"

The activitynames are from the document "activity_labels", and the features from the document called "features" in the
original data. 