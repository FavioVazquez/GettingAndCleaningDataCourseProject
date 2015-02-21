# Codebook

For information about how to dowload the data set used in this project go to the [README.md](https://github.com/FavioVazquez/GettingAndCleaningDataCourseProject/blob/master/README.md) file.

## Input files

The data set includes the following files:

* 'README.txt'

* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

* 'activity_labels.txt': Links the class labels with their activity name.

* 'train/X_train.txt': Training set.

* 'train/y_train.txt': Training labels.

* 'test/X_test.txt': Test set.

* 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

* 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

* 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

* 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

* 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Important notes about the observations

* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.
* The units used for the accelerations (total and body) are 'g's (gravity of earth -> 9.80665 m/seg2).
* The gyroscope units are rad/seg.
* A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following [link](http://www.youtube.com/watch?v=XOEN9W05_4A)

## The run_analysis script

The script created:

* Converts the raw data into R data frame objects

* Merges the train and test data into a single files for analysis

* Appends the subject ID to the appropriate row of data

* Changes the data column names to descriptive names

* Changes the activity data to descriptive names

* Produces an aggregated tidy data file of activities by subject

## Output

The final output is a tidy data set with the average of each variable for each activity and each subject and can be found [here](https://github.com/FavioVazquez/GettingAndCleaningDataCourseProject/blob/master/tidydata.txt)