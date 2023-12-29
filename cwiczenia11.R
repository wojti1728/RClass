
# Cwiczenia 9

# R- ggplot2 cz1.

library('ggplot2')
library('ggplot2')
library("tidyverse")
library('tidyverse')
library("ggthemes")
library('ggthemes')

#Przyklad 1

str(mtcars)
head(mtcars)

View(mtcars)

#a)
ggplot(data=mtcars, aes(x=cyl, y=mpg)) +
  geom_point() #dodatkowe informacje jak ma wykres wygladac

#b)
ggplot(data=mtcars, aes(x=cyl, y=mpg)) +
  geom_point(shape=1, size=4)

#c)
ggplot(data=mtcars, aes(x=wt, y=mpg, color = disp, size=disp)) +
  geom_point(alpha=0.8)+
  geom_smooth()

#d)
pl<-ggplot(mtcars, aes(wt, mpg))
pl+geom_point(aes(alpha=cyl))
pl+geom_point(aes(shape=as.factor(cyl)))+
  scale_x_log10()
pl+geom_text(aes(label=cyl))
pl+geom_point(aes(size= hp/wt))
dgreen<-"#013220"
pl+geom_point(color=dgreen, alpha=0.6, size=10, shape=1)
pl+ geom_text(label=rownames(mtcars))

#e)
m_colors <- c(automatic = "#378AB1", manual = "#E2111C")
ggplot(mtcars, aes(as.factor(cyl), fill = as.factor(am))) +
  geom_bar(position="dodge") +
  labs(x = "Number of Cylinders", y = "Count")
scale_fill_manual("Type", values = m_colors)

#zadanie 1

head(diamonds)
str(diamonds)
view(diamonds)
#a)
ggplot(diamonds, aes(x=carat, y=price)) + geom_point() +
  geom_smooth(se=FALSE) # krzywa obrazująca przebieg danych

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()+geom_smooth(se=FALSE)

#b)
ggplot(diamonds,aes(x=carat,y=price,color=clarity))+
  geom_point(alpha=0.5,size=3)+geom_smooth() # alpha - oznacza przeznorczystosc 
        #size - rozmiar, geom_smooth() - pokazuje krzywe obrazujace przebieg

#c)
ggplot(diamonds, aes(x=carat, y=price, color=clarity, size=cut)) + # clarify - pokazuje przebieg 
  # kolorowy, size=cut - odpowiada za kropki różnej 
geom_point()

#d)
ggplot(diamonds,aes(x=carat,y=price,log(xy)))+geom_point(alpha=0.5)

#inna wersja od kasi
ggplot(diamonds, aes(x=carat, y=price, color=clarity)) +
  geom_point(alpha=0.5)+
  scale_x_log10()+
  scale_y_log10()

#e)
ggplot(diamonds,aes(cut,fill=clarity))+geom_bar(position="dodge")

ggplot(diamonds,aes(cut,fill=clarity))+geom_bar() #standard

#Przykłady 2
#a)
ggplot(mtcars, aes(mpg, 0)) +
  geom_jitter(color="green") +
  ylim(-2,2)+
  xlab("Miles per gallon")

#b)
ggplot( mtcars , aes(x=mpg, y=wt, color=as.factor(cyl) )) +
  geom_point(size=3) +
  facet_wrap(~cyl)+
  ggtitle("Mtcars plot")

#c)
ggplot( mtcars , aes(x=mpg, y=wt )) +
  geom_point() +
  facet_grid( cyl ~ gear)


#d)
ggplot(mtcars, aes(x=mpg, fill=factor(am))) +
  geom_histogram(binwidth=3) +
  facet_wrap(~ cyl)+
  scale_fill_brewer(type = 'qual')

#e)
p = ggplot(mtcars, aes(x=mpg, fill=factor(am))) + geom_histogram(binwidth=5)
ggsave(filename="auta.png", p)

#Zadanie 2

#a)
ggplot(diamonds,aes(carat,price,color=cut)) + 
  geom_point() + facet_wrap(~clarity)

#b)
ggplot(diamonds, aes(x=carat, y=price)) +
  geom_point() + ggtitle("Diamonds scatterplot") +
  xlab("Weight (carats)")

ggplot(diamonds, aes(x=carat, y=price)) + geom_point()+
  ylab("Diamonds Scatterplot") +
  xlab("Weight Carats")

#c)
ggplot(diamonds,aes(price,fill=factor(clarity)))+geom_histogram(binwidth=200)

#d)
ggplot(diamonds, aes(x=price, color=cut)) +
  geom_density()

#e)

ggplot(diamonds, aes(x=color, y=price)) + geom_boxplot() + scale_y_log10()

#f)
m_plot<-ggplot(diamonds,aes(carat,price))+geom_point()
m_plot
ggsave(filename="mp_plot.png",m_plot)
ggsave(filename="mj_plot.jpeg",m_plot)

#g)
ggplot(diamonds,aes(cut,clarity))+geom_jitter(alpha=0.03)
# geom_jitter -  dodanie szumow do punktow (alpha=0.03) przezroczystosc