library('ggplot2')
library("tidyverse")
library("ggthemes")


#ZADANIE 1 (cwiczenia 10)

# R - ggplot2 cz2.

str(iris)
head(iris)
View(iris)
#Zadania 1

#a)

ggplot(iris,aes(x=Sepal.Length, y=Sepal.Width, color=as.factor(Species)))+
  geom_point(alpha=0.5,shape=12)+
  geom_jitter(width=0.2)

ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, color=as.factor(Species)))+
  geom_point(alpha=0.5, shape=12) +
  geom_jitter(width = 0.2)

ggplot(iris,aes(x=Sepal.Length, y=Sepal.Width, color=as.factor(Species)))+
  geom_point(alpha=0.5,shape=12)+ # to lepsze poniewaz ksztalt punktow mial byc na 12 (shape=12)
  geom_jitter(width=0.2)

#wersja czuchuro
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point(alpha = 0.5, position=position_jitter(width=0.2), shape=12)

#b)
ggplot(data=iris,aes(Sepal.Length,..density..)) + 
  geom_histogram(binwidth=1,colour="blue")
  # binwidth - szerokosc przedzialow

#c)
ggplot(iris, aes(x=Sepal.Length,fill=Species)) +
  geom_histogram(binwidth = 0.5, alpha=0.2, position="identity")

#d)
#z scale_color
ggplot(data=iris,aes(Sepal.Width,fill=Species)) + 
  geom_bar(position="fill")+scale_color_brewer()

# z scale_fill
ggplot(data=iris,aes(Sepal.Width,fill=Species)) + 
  geom_bar(position="fill")+scale_fill_brewer()

#PRZYKŁADY 2

#a)
ir_pl<-ggplot(iris, aes(Sepal.Width, fill = Species)) +
  geom_bar(position = "fill")+
  scale_fill_brewer()
ir_pl

ir_pl+
  theme(legend.position="bottom")

ir_pl+
  theme(legend.position=c(0.8, 0.7))

#b)
ir_pl + 
  theme(
  rect=element_rect(fill="green"),
  axis.text=element_text(color="purple"),
  legend.key = element_rect(color = NA)
)
ir_pl + theme_dark()

#ZADANIE 2 !

#a)
ggplot(mtcars, aes(wt, mpg))+
  geom_point(aes(alpha=cyl))+
  ggtitle("Scatter plot")+
  ylab("Miles per gallon")+
  xlab("WT")+
  theme(
    axis.title.y = element_text(size=14,color="#993333",face="bold"),
    axis.title.x = element_text(size=14,color="blue",face="bold"),
    plot.background = element_rect(fill = "lightblue"),
    plot.title=element_text(size=14, face="italic", color="red"),
    panel.background = element_rect(fill = "lightyellow", colour = "gray"),
  )

#b)
mtcars_plot<-ggplot(mtcars, aes(wt, mpg))+
  geom_point(aes(alpha=cyl))+
  ggtitle("Scatter plot")+
  ylab("Miles per gallon")+
  xlab("WT")
mtcars_plot + theme_economist_white()
mtcars_plot + theme_classic()


#PRZYKŁADY 3

#a)

iris_plot <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species))+
  geom_point(size=4)+
  geom_segment(aes(xend=2, yend=Sepal.Width), size=2)+
  theme_classic()
iris_plot

#b)
global_mean<-mean(iris$Sepal.Width)
iris_plot+
  geom_vline(xintercept=global_mean, color="black", linetype=4)

#c)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species))+
  geom_point(size=4)+
  stat_smooth(method=loess, se=TRUE)

#d)
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species))+
  geom_jitter() +
  geom_smooth(method = "lm", se = FALSE) +
  coord_fixed(ratio=1)

#ZADANIE 3

#a)
ggplot(mtcars,aes(x=qsec,y=mpg,color=am))+
  geom_point()+geom_segment(aes(xend=19,yend=mpg))

#b)
mpg_mean<-mean(mtcars$mpg)
mpg_median<-median(mtcars$mpg)
ggplot(mtcars,aes(x=qsec,y=mpg,color=am))+
  geom_point() +
  geom_vline(xintercept=mpg_median, color="black", linetype=4) +
  geom_vline(xintercept=mpg_mean, color="green", linetype=4)

med_mpg<-median(mtcars$mpg)
mean_mpg<-mean(mtcars$mpg)
ggplot(mtcars, aes(x=qsec, y=mpg))+
  geom_point()+
  geom_vline(xintercept = med_mpg, color="black", linetype =4)+
  geom_vline(xintercept = mean_mpg, color="green", linetype =3)

#c)
ggplot(mtcars,aes(x=wt, y=mpg, color=factor(cyl)))+
  geom_jitter(width=0.2)+
  stat_smooth(se=FALSE,method="loess")+
  stat_smooth(se=FALSE,method="lm")

#d)
# wersja Ewy
ggplot(mtcars,aes(mpg,drat,color=as.factor(am)))+
  geom_jitter(width=0.1)+
  coord_fixed(ratio=0.33)+
  geom_point(position=position_jitter(0.1))+
  geom_smooth(method="lm",se=FALSE)+
  theme(aspect.ratio=3)

#wersja Czuchuro
ggplot(mtcars, aes(x = wt, y = drat, color = factor(am))) +
  geom_jitter(width=0.1) +
  geom_smooth(method="lm", se=FALSE)+
  coord_fixed(ratio=0.33)

              