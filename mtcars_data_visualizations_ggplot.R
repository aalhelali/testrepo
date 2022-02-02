library(datasets)
data(mtcars)
head(mtcars,5)
?mtcars

library(ggplot2)
ggplot(aes(x=disp,y=mpg,),data=mtcars)+geom_point()+ggtitle("displacement vs miles per gallon")

mtcars$vsf<-as.factor(mtcars$vs)
ggplot(aes(x=vsf,y=mpg,fill = vs),data=mtcars)+geom_boxplot(alpha=0.3)+
  theme(legend.position="none")
ggplot(aes(x=wt),data=mtcars) + geom_histogram(binwidth=0.5)
