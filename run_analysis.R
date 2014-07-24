# Project requirements assume file has already been downloaded, so begin by unzipping file.
unzip("dataset.zip")
# Change working directory to test directory and read in all test data.
x_test<-read.table("X_test.txt")
y_test<-read.table("y_test.txt")
subject_test<-read.table("subject_test.txt")
# Repeat for train data.
setwd("../")
setwd("./train")
x_train<-read.table("x_train.txt")
y_train<-read.table("y_train.txt")
subject_train<-read.table("subject_train.txt")
# Now read in activity labels and features
setwd("../")
activity_labels<-read.table("activity_labels.txt")
features<-read.table("features.txt")
# As per project requirements, meanstdrows stores row numbers of features that
# have mean or standard deviation, excluding meanFreq since it is weighted.
meanstdrows<-grep("mean[^F]|std",features[,2])
# Now each of the test and and train data sets are combined with rbind, and
# the new merged_x is selected for the required meanstdrows.
merged_x<-rbind(x_train,x_test)
ms_merged_x<-merged_x[,meanstdrows]
merged_y<-rbind(y_train,y_test)
merged_subject<-rbind(subject_train,subject_test)
# In accordance with slide 16 of editing text variables, I followed suggested
# conventions by using lower case letters. I also eliminated parentheses, as 
# they seemed confusing in a variable name. While underscores were discouraged, 
# dashes were not, but they seemed to be in the same "spirit", so I took them out too.
meanstdnames<-features[meanstdrows,2]
meanstdnames<-tolower(meanstdnames)
meanstdnames<-gsub("[()]","",meanstdnames)
meanstdnames<-gsub("[-]","",meanstdnames)
names(ms_merged_x)<-meanstdnames
# Names are given to the merged_subject and merged_y columns.
names(merged_subject)<-"subject"
names(merged_y)<-"activ"
# Again, following naming conventions, I used lower case letters and removed "_"
# on activity labels.
names(activity_labels)<-c("number","activity")
activity_labels$activity<-tolower(activity_labels$activity)
activity_labels$activity<-gsub("[_]","",activity_labels$activity)
# The new x, subject, and y, data frames are combined with cbind.
# Now a merge is used to replace activity numbers with activity names.
tidy<-cbind(ms_merged_x,merged_subject,merged_y)
tidy<-merge(tidy,activity_labels,by.x="activ",by.y="number",sort=FALSE)
tidy$activ<-NULL
# Finally, I melted the data frame by subject and activity and dcast it
# to get the mean for each subject and activity. The result was written to a 
# txt file.
tidymelt<-melt(tidy,id=c("subject","activity"))
tidymeltcast<-dcast(tidymelt,subject + activity~variable,mean)
write.table(tidymeltcast,file="tidy.txt",row.names=FALSE)