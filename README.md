# Human Activity Recognition Using Smartphones Experiment - Tidying data project

##  Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

The data for this project may be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). 

This project is part of a Coursera course - *Getting and Cleaning Data*, that aims to consume the raw data gathered by conducting this series of experiments, and output a tidy data set that makes further analysis of the data easy. This tidy data set may then act as a conducive starting point for those who would want to analyze the data in detail :

The project contains :

* An R script run_analysis.R which takes as input the raw data from these experiments and returns a tidy data set that summarizes a set of features per actiivty per volunteer.
* A codebook or data dictionary, "codebook.md" that contains the description of the variables in the output dataset.   
* The script once executed, the resulting dataset maybe found in the user's working directory by the name "tidy_data.txt"

For detailed description of the features, please refer to **codebook.md**.

## Assumptions

This dataset should be downloaded and extracted directly into the working directory.

## The script '*run_analysis.R*' does the following tasks : 

* Converts the raw data into R data frame objects
* Merges the training and test data sets into a single file for analysis
* Removes the objects that are no longer needed in the environment in order to conserve memory
* Replaces the activity code with a descriptive activity name 
* Renames the data column names to descriptive feature names
* Checks for records with any NA or missing values
* Outputs a summarized tidy data file per activities per subject/volunteer


## License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

