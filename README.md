TidyData
========

David Carlson
Texas A&M University
June 22, 2014

This project involves reading processed data from the Human Activity Recognition Using Smartphones Data Set that is located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The experiment involved 30 volunteers (19-48 years old) who wore a smartphone while walking, walking upstairs, walking downstairs, sitting, standing, and laying. Two sensors (accelerometer and gyroscope) provided raw data that was processed into 561 variables for each of the 10299 observations. The data were further divided into training and test sets for use in data mining/statistical learning analyses.

The Tidy Data project was to accomplish several tasks:

 1. Create a script file called run_analysis.R that did the following 
    + Merge the training and test data sets
    + Extracted only measurements on the mean and standard deviation for each measurement
    + Provide informative labelling for the activities instead of 1 - 6.
    + Provide descriptive variable labels
    + Create a second data set containing variable averages by activity and subject
 2. Create a github repository containing the results of the project
 3. Providing a summary in the README.md file
 4. Providing a Codebook.md file with information about the variables.

Task 1 is accomplished in the run_analysis.R script file assuming that the unzipped files are located in the "UCI HAR Dataset" in the current working directory:

1. The script file first retrieves the Activity labels and the Feature (variable) labels. 
2. Then the Features are filtered to remove those that are means or standard deviations. This included all Features containing the character strings "mean()" or "std()". In addition, Features labeled "meanFreq()" were also included since the directions were ambiguous regarding these Features.
3. The rather long Feature labels were shorted by abbreviating regular elements to create shorter, but still informative variable names.
4. A vector is created to identify the columns of the data set that are needed with values of either "NULL", not needed or "numeric" for columns to be retrieved. This vector is used in the colClasses= argument of read.table() to retrieve only the data needed.
5. Then the subject list, and activity list, and selected columns from test data are retrieved from the test folder.
6. Then the subject list, and activity list, and selected columns from test data are retrieved from the train folder.
7. The six data.frames are combined into tidy.data, the Activity column is labeled using a factor, and the abbreviated variable names are attached.
8. Then a check for missing values in the data set. There are none.
9. Create tidy.mean using the aggregate() function to compute the means by subject and activity.
10. Save both data.frames
