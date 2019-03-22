setwd('C:/Users/shah/workspace/DrugModel/R/RWorkspace/')
customer <-read.csv(file="CustomerOY.csv",head=TRUE,sep=",")
attach(customer)
#dataframe <- data.frame(customer$run , customer$tick, customer$PersonID, customer$OutDegree, customer$MyNumofDealer)
dataframe <- data.frame(customer$PersonID, customer$TotalUnitsPurchased, customer$TotalMoneySpend+ customer$TotalTaxPaid - customer$TotalTaxCollected)
names(dataframe)
colnames(dataframe) <- c("PersonID", "UnitPurchased", "ActualMoneySpend")
names(dataframe)
attach(dataframe)
minUP <- min(dataframe$UnitPurchased)
maxUP <- max(dataframe$UnitPurchased)
minMS <- min(dataframe$ActualMoneySpend)
maxMS <- max(dataframe$ActualMoneySpend)
binUP <- seq(minUP,maxUP, by= (maxUP-minUP)/5 )
binMS <- seq(minMS,maxMS, by= (maxMS-minMS)/5 )
binUPSize <- (maxUP -minUP)/5
binUPSizze
binMSSize <- (maxMS -minMS)/5
binMSSize
a <- length(dataframe$PersonID[(dataframe$UnitPurchased >= minUP & dataframe$UnitPurchased < (minUP + binUPSize)) & (dataframe$ActualMoneySpend >= minMS & dataframe$ActualMoneySpend < (minMS + binMSSize)) ])  




reshape(dataframe,direction="wide",timevar="UnitPurchased",idvar="ActualMoneySpend")


