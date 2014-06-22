---
title: "Codebook"
author: "David Carlson"
date: "Sunday, June 22, 2014"
output: html_document
---


The Human Activity Recognition Using Smartphones Data Set is the result of a experiment to determine if activities of daily living could be identified from the accelerometer and gyroscope measurements taken by smartphones (specifically the Samsung Galaxy S). The data are located at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

According to the README.txt file the basic experiment was as follows:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

This codebook refers to the the data.frames tidy.data and tidy.mean that are produced by the script file run_analysis.R. The specific steps in the analysis are documented in the script file and in the README.md document.

The file tidy.data contains 10,299 observations containing information on the Subject (1 - 30), the Activity (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), and 79 of the original 561 variables in the test and training data sets (81 variables total). The selected variables are mean or standard deviations of the processed variables which included triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration and triaxial angular velocity from the gyroscope which were used to produce 561 time and frequency domain variables. 

Variables in the data set:
```

                               Original Data Files
No Var               Type      No  Feature
--------------------------------------------------------
 1 Subject           integer     
 2 Activity          factor
 3 tBdAc.mn.X        numeric    1  tBodyAcc-mean()-X              
 4 tBdAc.mn.Y        numeric    2  tBodyAcc-mean()-Y              
 5 tBdAc.mn.Z        numeric    3  tBodyAcc-mean()-Z              
 6 tBdAc.sd.X        numeric    4  tBodyAcc-std()-X               
 7 tBdAc.sd.Y        numeric    5  tBodyAcc-std()-Y               
 8 tBdAc.sd.Z        numeric    6  tBodyAcc-std()-Z               
 9 tGrAc.mn.X        numeric   41  tGravityAcc-mean()-X           
10 tGrAc.mn.Y        numeric   42  tGravityAcc-mean()-Y           
11 tGrAc.mn.Z        numeric   43  tGravityAcc-mean()-Z           
12 tGrAc.sd.X        numeric   44  tGravityAcc-std()-X            
13 tGrAc.sd.Y        numeric   45  tGravityAcc-std()-Y            
14 tGrAc.sd.Z        numeric   46  tGravityAcc-std()-Z            
15 tBdAcJk.mn.X      numeric   81  tBodyAccJerk-mean()-X          
16 tBdAcJk.mn.Y      numeric   82  tBodyAccJerk-mean()-Y          
17 tBdAcJk.mn.Z      numeric   83  tBodyAccJerk-mean()-Z          
18 tBdAcJk.sd.X      numeric   84  tBodyAccJerk-std()-X           
19 tBdAcJk.sd.Y      numeric   85  tBodyAccJerk-std()-Y           
20 tBdAcJk.sd.Z      numeric   86  tBodyAccJerk-std()-Z           
21 tBdGy.mn.X        numeric  121  tBodyGyro-mean()-X             
22 tBdGy.mn.Y        numeric  122  tBodyGyro-mean()-Y             
23 tBdGy.mn.Z        numeric  123  tBodyGyro-mean()-Z             
24 tBdGy.sd.X        numeric  124  tBodyGyro-std()-X              
25 tBdGy.sd.Y        numeric  125  tBodyGyro-std()-Y              
26 tBdGy.sd.Z        numeric  126  tBodyGyro-std()-Z              
27 tBdGyJk.mn.X      numeric  161  tBodyGyroJerk-mean()-X         
28 tBdGyJk.mn.Y      numeric  162  tBodyGyroJerk-mean()-Y         
29 tBdGyJk.mn.Z      numeric  163  tBodyGyroJerk-mean()-Z         
30 tBdGyJk.sd.X      numeric  164  tBodyGyroJerk-std()-X          
31 tBdGyJk.sd.Y      numeric  165  tBodyGyroJerk-std()-Y          
32 tBdGyJk.sd.Z      numeric  166  tBodyGyroJerk-std()-Z          
33 tBdAcMag.mn       numeric  201  tBodyAccMag-mean()             
34 tBdAcMag.sd       numeric  202  tBodyAccMag-std()              
35 tGrAcMag.mn       numeric  214  tGravityAccMag-mean()          
36 tGrAcMag.sd       numeric  215  tGravityAccMag-std()           
37 tBdAcJkMag.mn     numeric  227  tBodyAccJerkMag-mean()         
38 tBdAcJkMag.sd     numeric  228  tBodyAccJerkMag-std()          
39 tBdGyMag.mn       numeric  240  tBodyGyroMag-mean()            
40 tBdGyMag.sd       numeric  241  tBodyGyroMag-std()             
41 tBdGyJkMag.mn     numeric  253  tBodyGyroJerkMag-mean()        
42 tBdGyJkMag.sd     numeric  254  tBodyGyroJerkMag-std()         
43 fBdAc.mn.X        numeric  266  fBodyAcc-mean()-X              
44 fBdAc.mn.Y        numeric  267  fBodyAcc-mean()-Y              
45 fBdAc.mn.Z        numeric  268  fBodyAcc-mean()-Z              
46 fBdAc.sd.X        numeric  269  fBodyAcc-std()-X               
47 fBdAc.sd.Y        numeric  270  fBodyAcc-std()-Y               
48 fBdAc.sd.Z        numeric  271  fBodyAcc-std()-Z               
49 fBdAc.mnFr.X      numeric  294  fBodyAcc-meanFreq()-X          
50 fBdAc.mnFr.Y      numeric  295  fBodyAcc-meanFreq()-Y          
51 fBdAc.mnFr.Z      numeric  296  fBodyAcc-meanFreq()-Z          
52 fBdAcJk.mn.X      numeric  345  fBodyAccJerk-mean()-X          
53 fBdAcJk.mn.Y      numeric  346  fBodyAccJerk-mean()-Y          
54 fBdAcJk.mn.Z      numeric  347  fBodyAccJerk-mean()-Z          
55 fBdAcJk.sd.X      numeric  348  fBodyAccJerk-std()-X           
56 fBdAcJk.sd.Y      numeric  349  fBodyAccJerk-std()-Y           
57 fBdAcJk.sd.Z      numeric  350  fBodyAccJerk-std()-Z           
58 fBdAcJk.mnFr.X    numeric  373  fBodyAccJerk-meanFreq()-X      
59 fBdAcJk.mnFr.Y    numeric  374  fBodyAccJerk-meanFreq()-Y      
60 fBdAcJk.mnFr.Z    numeric  375  fBodyAccJerk-meanFreq()-Z      
61 fBdGy.mn.X        numeric  424  fBodyGyro-mean()-X             
62 fBdGy.mn.Y        numeric  425  fBodyGyro-mean()-Y             
63 fBdGy.mn.Z        numeric  426  fBodyGyro-mean()-Z             
64 fBdGy.sd.X        numeric  427  fBodyGyro-std()-X              
65 fBdGy.sd.Y        numeric  428  fBodyGyro-std()-Y              
66 fBdGy.sd.Z        numeric  429  fBodyGyro-std()-Z              
67 fBdGy.mnFr.X      numeric  452  fBodyGyro-meanFreq()-X         
68 fBdGy.mnFr.Y      numeric  453  fBodyGyro-meanFreq()-Y         
69 fBdGy.mnFr.Z      numeric  454  fBodyGyro-meanFreq()-Z         
70 fBdAcMag.mn       numeric  503  fBodyAccMag-mean()             
71 fBdAcMag.sd       numeric  504  fBodyAccMag-std()              
72 fBdAcMag.mnFr     numeric  513  fBodyAccMag-meanFreq()         
73 fBdBdAcJkMag.mn   numeric  516  fBodyBodyAccJerkMag-mean()     
74 fBdBdAcJkMag.sd   numeric  517  fBodyBodyAccJerkMag-std()      
75 fBdBdAcJkMag.mnFr numeric  526  fBodyBodyAccJerkMag-meanFreq() 
76 fBdBdGyMag.mn     numeric  529  fBodyBodyGyroMag-mean()        
77 fBdBdGyMag.sd     numeric  530  fBodyBodyGyroMag-std()         
78 fBdBdGyMag.mnFr   numeric  539  fBodyBodyGyroMag-meanFreq()    
79 fBdBdGyJkMag.mn   numeric  542  fBodyBodyGyroJerkMag-mean()    
80 fBdBdGyJkMag.sd   numeric  543  fBodyBodyGyroJerkMag-std()     
81 fBdBdGyJkMag.mnFr numeric  552  fBodyBodyGyroJerkMag-meanFreq()
```

Abbreviated variable names in tidy.data use the following abbreviations:

```
  Original  Abbreviation
------------------------
1 -             .     
2 Acc           Ac    
3 Body          Bd    
4 meanFreq()    mnFr  
5 Gravity       Gr    
6 Gyro          Gy    
7 Jerk          Jk    
8 mean()        mn    
9 std()         sd  
```

