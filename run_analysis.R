##Make sure you have downloaded and extract the data set
##and the files are in the working directory.
##You can find a direct link to it in the README.md file.

##You will need for this project the data.table package

##If the package is not install, just run:
##install.packages("data.table")

require(data.table)

##########################
## Part 1: Merge the training and the test sets to create one data set.
##########################


## First the training files

x_train <- fread(input = "train/X_train.txt")

subject_train <- fread(input = "train/subject_train.txt")
names(subject_train)[1] <- 'subject'

label_train <- fread(input = "train/y_train.txt")
names(label_train)[1] <- "activity"

## Now the test files

x_test <- fread(input = "test/X_test.txt")

subject_test <- fread(input = "test/subject_test.txt")
names(subject_test)[1] <- "subject"

label_test <- fread(input = "test/y_test.txt")
names(label_test)[1] <- "activity"

## merge the files

bind_train <- cbind(subject_train, label_train, x_train)
bind_test <- cbind(subject_test, label_test, x_test)

DT <- rbind(bind_train,bind_test)

###############################################
##Part 2. Extract only the measurements on the mean and standard deviation for 
##each measurement.
###############################################

## Create a column vector of mean

means <- apply(DT[3:563], 2, mean)

## Create a colum vector of standard deviation

stand_deviation <- apply(DT[3:563], 2, sd)

## Combine both results

extracted_stats <- cbind(means,stand_deviation)

###############################################
##Part 3.Use descriptive activity names to name the activities 
##in the data set
###############################################

DT$activity[which(DT$activity == 1)] <- 'Walking'
DT$activity[which(DT$activity == 2)] <- 'Walking upstairs'
DT$activity[which(DT$activity == 3)] <- 'Walking downstairs'
DT$activity[which(DT$activity == 4)] <- 'Sitting'
DT$activity[which(DT$activity == 5)] <- 'Standing'
DT$activity[which(DT$activity == 6)] <- 'Laying'

##############################################
## Part 4: Appropriately labels the data set 
##with descriptive names
#############################################

features <- fread()