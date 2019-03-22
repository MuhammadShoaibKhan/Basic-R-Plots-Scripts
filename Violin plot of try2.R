library(ggplot2)
library(readr)
try2 <- read_csv("C:/Users/Muhammad Shoaib Khan/Desktop/try2/try2.csv")
View(try2)
attach(try2)
# Creating violin plots
ggplot(try2, aes(x=`count dealers`,y=arrests)) + geom_violin()
ggplot(try2, aes(x=`count dealers`,y=arrests)) + geom_violin() + ylim(0,15) + guides(fill=FALSE)
ggplot(try2, aes(x=`count dealers`,y=arrests)) + geom_violin(adjust=0.2) + ylim(0,10) + guides(fill=FALSE)
# default adjust is 1, lower means finer resolution

# You can log-scale any numerical axis on any plot
ggplot(try2, aes(x=`count dealers`,y=arrests,fill=arrests_2)) + geom_violin() + 
  scale_y_log10()

# Creating a density plot
ggplot(try2, aes(x=`count dealers`,fill=arrests)) + geom_density() + xlim(0,10)

ggplot(try2, aes(x=`count dealers_1`,y=arrests_1)) + geom_violin()

ggplot(try2, aes(x=`count dealers_2`,y=arrests_2)) + geom_violin()

ggplot(try2, aes(x=`count dealers`,fill=arrests)) + geom_density() + xlim(0,10) + facet_grid(`count dealers` ~ arrests)
