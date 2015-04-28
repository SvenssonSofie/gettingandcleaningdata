The script takes the Human Activity Recognition Using Smartphones Data Set collected from Samsung Galaxy users, from the source "http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones". The script starts with downloading this data to a temporary file. The data is read and the file is removed. 

The test and train group are concatenated to a joint data set containing all measurments of the variables. The column names are read from the file "features.txt". 

The activities are added as an additional column to the data and the activity labels are merged to the activites so that one column represents the activities with their labels. 

The relevant data is extracted, that is all column names that contains "mean()" or "std()". Those columns togehter with "subject" and "activity" are the new data set from which the means of the variables are calculated. 

The output is written to the file "mean.txt". 
