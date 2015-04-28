#download data
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)

#extract and read data
xtest <- read.table(unz(temp,"UCI HAR Dataset/test/X_test.txt"))
ytest <- read.table(unz(temp,"UCI HAR Dataset/test/y_test.txt"))
subject_test <- read.table(unz(temp,"UCI HAR Dataset/test/subject_test.txt"))
xtrain <- read.table(unz(temp,"UCI HAR Dataset/train/X_train.txt"))
ytrain <- read.table(unz(temp,"UCI HAR Dataset/train/y_train.txt"))
subject_train <- read.table(unz(temp,"UCI HAR Dataset/train/subject_train.txt"))
features <- read.table(unz(temp,"UCI HAR Dataset/features.txt"))
activity_labels <- read.table(unz(temp,"UCI HAR Dataset/activity_labels.txt"))

unlink(temp)

#add names to columns in both sets
colnames(xtest) <- features[,2]
colnames(xtrain) <- features[,2]

#adds subject and activity to data
xtest[,"subject"] <- subject_test
xtrain[,"subject"] <- subject_train
xtest[,"activity"] <- ytest
xtrain[,"activity"] <- ytrain

#mcombines the test and train data to one data set
allData <- rbind(xtest,xtrain)

#merge with activity labels 
allData <- merge(allData,activity_labels,by.x="activity",by.y="V1",sort=F)
allData$activity <- allData$V2

#extract relevant indices
stdIndex <- grep("std+",names(allData))
meanIndex <- grep("mean+",names(allData))

#create the new Data with relevant information
newData <- allData[, c(stdIndex,meanIndex)]
newData[,"activity"] <- allData[,"activity"]
newData[,"subject"] <- allData[,"subject"]

#create tidy data set
meltedData <- melt(newData,id=c("subject","activity"))
tidyData <- dcast(meltedData, subject + activity ~ variable, mean)

#write to document
write.fwf(tidyData, "mean.txt")
