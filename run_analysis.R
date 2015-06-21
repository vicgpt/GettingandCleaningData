features<-read.table("UCI HAR Dataset/features.txt")
features<-features[,2]

y_train<-read.table("UCI HAR Dataset/train/y_train.txt")
X_train<-read.table("UCI HAR Dataset/train/X_train.txt")

X_test<-read.table("UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("UCI HAR Dataset/test/y_test.txt")

subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt")
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt")

colnames(X_train)<-features
colnames(X_test)<-features

mean<-grep("mean()",features,fixed = TRUE)
std<-grep("std()",features,fixed = TRUE)


X_test_new<-cbind(X_test[,std],X_test[,mean])
X_train_new<-cbind(X_train[,std],X_train[,mean])
identical(colnames(X_test_new),colnames(X_train_new))



X_train_new<-cbind(X_train_new[],y_train,subject_train)
X_test_new<-cbind(X_test_new[],y_test,subject_test)
X_merge<-rbind(X_train_new[],X_test_new[])

colnames(X_merge)[67]<-"Activity"
colnames(X_merge)[68]<-"Subject"

library(plyr);
Data<-aggregate(X_merge,by=list(X_merge$Activity,X_merge$Subject), mean)
write.table(Data[,3:70], file = "tidydata.txt",row.name=FALSE)

