# Readme: Human Activity Recognition Using Smartphones Data Set 

This is a project build for the Getting and Cleaning Data course in Coursera. It uses a  Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors  (Samsung Galaxy S II).

The whole project and further explanations can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

And the full data set can be downloaded here:

[.::Human Activity Recognition Using Smartphones Data Set::.](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

## Data set information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Atribute Information:

For each record in the dataset it is provided: 

* Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
* Triaxial Angular velocity from the gyroscope. 
* A 561-feature vector with time and frequency domain variables. 
* Its activity label. 
* An identifier of the subject who carried out the experiment.

## This project

In this project, I created a run_analysis.R that answer some questions asked by the coursera course, but in summary this script:

* Converts the raw data into R data frame objects

* Merges the train and test data into a single files for analysis

* Appends the subject ID to the appropriate row of data

* Changes the data column names to descriptive names

* Changes the activity data to descriptive names

* Produces an aggregated tidy data file of activities by subject

##Citation Request by the creators of this project:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.