# run_analysis.R
# Extract and combine test and training data sets from the 
# "Human Activity Recognition Using Smartphones Data Set "
# Set the folder containing the data in the home directory
folder <- "UCI HAR Dataset"

# Create data.frame of the activity labels
activity.labels <- read.table(paste0(folder, "/activity_labels.txt"), 
                              stringsAsFactors=FALSE)
names(activity.labels) <- c("Code", "Activity")

# Create a data.frame of the features
features <- read.table(paste0(folder, "/features.txt"), stringsAsFactors=FALSE)
names(features) <- c("Code", "Feature")

# Get mean() and std() features
# Note this will include meanFreq() features, to exclude them add fixed=TRUE argument
feat.mean <- grep("-mean()", features$Feature)
feat.std <- grep("-std()", features$Feature)
features.selected <- features[sort(c(feat.mean, feat.std)),]

# Create informative abbreviations for the variable names
Act.abb <- data.frame(label=c("-", "Acc", "Body", "meanFreq()", "Gravity", "Gyro", "Jerk", "mean()", "std()"),
            abbrev=c(".", "Ac", "Bd", "mnFr", "Gr", "Gy", "Jk", "mn", "sd"), stringsAsFactors=FALSE)
feat.vars <- features.selected
for (i in 1:nrow(Act.abb)) feat.vars$Feature <- gsub(Act.abb[i,1], Act.abb[i,2], feat.vars$Feature, fixed=TRUE)
feat.vars$Feature

# Create columns identifying the columns to ignore and the ones to read
# using the colClasses argument in read.table
columns <- rep("NULL", nrow(features))
columns[features.selected$Code] <- "numeric"

# Read subject list, and activity list, and selected columns from test data
test.subjects <- read.table(paste0(folder, "/test/subject_test.txt"))
names(test.subjects) <- "Subject"
test.activity <- read.table(paste0(folder, "/test/y_test.txt"))
names(test.activity) <- "Activity"
test.data <- read.table(paste0(folder, "/test/X_test.txt"), colClasses=columns)

# Read subject list, and activity list, and needed columns from training data
train.subjects <- read.table(paste0(folder, "/train/subject_train.txt"))
names(train.subjects) <- "Subject"
train.activity <- read.table(paste0(folder, "/train/y_train.txt"))
names(train.activity) <- "Activity"
train.data <- read.table(paste0(folder, "/train/X_train.txt"), colClasses=columns)

# Combine train and test data, label activities and variables
tidy.data <- rbind(cbind(test.subjects, test.activity, test.data), 
                  cbind(train.subjects, train.activity, train.data))
tidy.data$Activity <- factor(tidy.data$Activity, labels=activity.labels$Activity)
names(tidy.data)[3:ncol(tidy.data)] <- feat.vars$Feature

# Do we have any missing data?
sum(is.na(tidy.data))
# Result is 0 so no
# compute means by subject and activity
tidy.mean <- aggregate(tidy.data[,-c(1,2)], list(Subject=tidy.data$Subject, 
            Activity=tidy.data$Activity), mean)

# Save the results
save(tidy.data, file="tidy.data.RData")
save(tidy.mean, file="tidy.mean.RData")

