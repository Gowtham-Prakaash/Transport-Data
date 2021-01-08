setwd("/Users/gowthamprakaash/Desktop/Hackathon/Traindata")

Flight = read.csv("Flight data_Train.csv",header = TRUE)
survey = read.csv("Surveydata_Train.csv",header = TRUE)  

traindata = read.csv("COnsolidated_train.csv",header=TRUE)
summary(survey$Satisfaction)
names(survey)
X = survey[,3:16]
Y = survey[,2]

library(MASS)
linDAmodel = linDA(formula=f,data=survey,na.action= na.pass,CV=TRUE)

desDAmodel = desDA(X,Y)

f
help(lda)

newsurveydata


names(traindata)
f = names(traindata[,3:24])
f= paste(f,collapse = '+')
f
f = paste("Satisfaction ~ ",f)

traindata1 = traindata
traindata1$Seat_comfort =factor(traindata$Seat_comfort,levels=c("extremely poor","poor","need improvement","acceptable","good","excellent"),values=c(0,1,2,3,4,5))
traindata1$Seat_comfort = as.numeric(traindata1$Seat_comfort)
str(traindata1$Seat_comfort)

summary(traindata1)
f

logit = glm(formula = f,family= binomial(link = 'logit'),data=traindata,na.action=na.pass)


help(glm)

