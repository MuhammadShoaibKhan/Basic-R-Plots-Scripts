#Combine n files into one

setwd("C:/Users/shah/CV/R/DataForPaper/D90")  #set working directory to be the folder where data are saved
filenames=dir(pattern = "*.csv")

x_list=c()

for (i in filenames){

  a=read.csv(file=i,head=TRUE,sep=",")
  x_list=c(x_list,a[,1])

}

x_max=max(x_list)
combine = data.frame(c(0:x_max) )
colnames(combine) = c("x1")

for(i in filenames){
  d=read.csv(file = i,head=FALSE,sep=",")
  colnames(d) <- c("x1","x2","x3")
  b= data.frame(d$x1,d$x3)
  colnames(b) <- c("x1", i)
  combine = merge(combine, b, by =c("x1"), all = TRUE )
}
combine[is.na(combine)] <- "#N/A"
#colnames(combine) = c("x1", filenames)
write.table(combine, file = "PanelC.csv", sep= ",",row.names = FALSE)


            