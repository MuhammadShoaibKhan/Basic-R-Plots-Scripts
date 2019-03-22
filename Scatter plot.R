ggplot(mtcars, aes(wt, mpg)) + geom_point(aes(colour = factor(cyl)))
ggplot(mtcars, aes(wt, hp)) + geom_point(aes(colour = factor(gear)))