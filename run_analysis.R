library(reshape2)

## Reading data from X_train, y_train and subject_train : 
x.train <- read.table("./train/X_train.txt", header = FALSE, sep = "")
activity.train <- read.table("./train/y_train.txt", header = FALSE, sep = "\t")
subject.train <- read.table("./train/subject_train.txt", header = FALSE, sep ="\t")

## Reading data from X_test, y_test and subject_test :
x.test <- read.table("./test/X_test.txt", header = FALSE, sep = "")
activity.test <- read.table("./test/y_test.txt", header = FALSE, sep ="\t")
subject.test <- read.table("./test/subject_test.txt", header = FALSE, sep ="\t")

## Merging the two, training and test datasets respectively for x, activity and subject datasets :
x.df <- rbind(x.train, x.test)
activity.df <- rbind(activity.train, activity.test)
subject.df <- rbind(subject.train, subject.test)

## Reading descriptive activity names and descriptive feature names : 
activity.names <- read.table("./activity_labels.txt", header = FALSE, sep ="")
names(activity.names) <- c("ID", "Activity")
features.table <- read.table("./features.txt", header = FALSE, sep = "")
names(features.table) <- c("id", "Feature Description")

## Naming the columns of the the data frame corresponding to subject, activity and features : 
names(subject.df) <- "Volunteer"
names(activity.df) <- "Activity_id"
# Labeling the columns with descriptive names from the features table
x_feat <- vector()
x_feat <- features.table[,2]
names(x.df) <- x_feat 

## Combining subject, activity and features data together into one data frame, all.df : 
all.df <- cbind(subject.df, activity.df, x.df)

## Removing objects from the environment that are not required anymore in order to conserve memory :

rm(x.train,x.test)
rm(subject.train,subject.test)
rm(activity.train,activity.test)
rm(x.df, subject.df, activity.df, features.table)

## Labeling the descriptive activity names in data frame "all.df" from the values present in the activity table :
interim1 <- merge(activity.names, all.df, by.x = "ID", by.y = "Activity_id", all = TRUE)
interim1 <- interim1[,-1] # Removing the "Activity_id" column from the dataset

## extracting only those columns which have mean or standard deviation measurement : 
# meansd_col is a character vector that stores the search pattern of mean & sd columns using which we shall subset the interim1 data frame
meansd_col <- c(grep("-mean", colnames(interim1)), grep("-std", colnames(interim1)))  
all.meansd <- interim1[,c(1,2,meansd_col)]
rm(all.df, interim1, activity.names) # removing objects that are no longer needed

## 'Melt' reshapes the "all.meansd" data frame on the basis of Activity and Volunteer variable yielding the long form of the original dataset:
## 'dcast' summarizes the data in the wide form where all each of the measured variables have been summarized per 'activity' per 'volunteer' 

molten.df <- melt(all.meansd, id.var = c("Activity","Volunteer"))
new1 <- dcast(molten.df, Activity+Volunteer ~ variable, mean)

## Weeding out any NA values if any :

newvec <- complete.cases(new1)
tidy1 <- new1[newvec,]

## Write the data into a file :

 write.table(tidy1, file = "./tidy_data.txt", row.names = FALSE)
