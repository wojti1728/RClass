install.packages("lattice")
install.packages("latticeExtra")
library("tidyverse")
library("lattice")
library("latticeExtra")
library("ggplot2")

#Cwiczenia 11 R-lattice

#Przyklady 1

#a)

str(airquality)
histogram(~ Ozone, data = airquality,
          nint=10,
          type="count")
#b)

xyplot(Ozone ~ Solar.R, data = airquality,
       main = "Air Quality",
       xlab = "Temperature (Fahrenheit)",
       ylab = "Ozone (ppb)"
)

#c)

histogram(~Ozone|factor(Month),
          data = airquality,
          layout=c(5,1),
          xlab="Ozone (ppb)")
#d)

xyplot(Ozone ~ Temp, airquality, groups = Month,
       # Complete the legend spec
       auto.key = list(space = "right",
                       title = "Month",
                       text = month.name[5:9]))

#Zadania 1

#a)
head(airquality)
head(diamonds)
head(USCancerRates)

xyplot(Petal.Length ~ Sepal.Length,
       iris,main="Iris Scatterplot", 
       xlab="Petal length", ylab="Sepal Length" )
xyplot(Petal.Length~Sepal.Length, data=iris, 
       main="Iris Scatterplot", 
       xlab = "Petal Length", 
       ylab="Sepal Lneght")

#b)

xyplot(Petal.Length ~ Sepal.Length, 
       data = iris,main="Iris Scatterplot", 
       xlab="Petal length", ylab="Sepal Length",
       group = Species,
       auto.key =list(space="right", title="iris type"))

#c)

histogram(~Petal.Width|factor(Species), 
          data=iris, nint = 15, layout = c(3,1),  # nint - odpowiada za liczbe przedzialow hista
          type="count", col=c("darkgreen"))

#histogram(~Petal.Width|factor(Species),iris,layout=c(3,1),nint=15)

#d)

cloud(Petal.Length ~ Sepal.Length * Petal.Width,
      group = Species, data=iris,
      auto.key = TRUE, alpha = 0.8,
      screen=list(x=-60, y=0, z=10))
cloud(Petal.Width~Petal.Width*Sepal.Length, data = iris,
      group=Species,
      auto.key = TRUE, size=0.8,
      screen=list(x=-60, y=0, z=10))

#e)

bwplot(~Petal.Width|Species, data=iris, layout=c(3,1),
       auto.key = TRUE,
       xlab="PPetal width")

bwplot(~Petal.Width|Species, data=iris, layout=c(3,1),
       panel=panel.violin,
       xlab="PPetal width")


#f)
stripplot(Petal.Width ~ Species,  data = iris,
          jitter.data = TRUE, # jitter pozwala nam rozrzucac punkty (mozemy zobaczyc jaka jest liczbnosc punktow)
          col=c("darkgreen"))

#Przykłady 2. Dane USCancerRates, mtcars

#a)

xyplot(rate.female ~ rate.male, # wykres rozrzuty
       data = USCancerRates,
       grid = TRUE, abline = c(0, 1),
       as.table=TRUE)
#b)
bwplot(~ rate.male + rate.female,
       data = USCancerRates,
       outer = TRUE,
       xlab="Rate (per 100,000)",
       strip = strip.custom(factor.levels = c("Male", "Female")),
       aspect=2) # podział wykresu

#c)

dens_plot <-
  densityplot(~ rate.male + rate.female,
              data = USCancerRates, outer = TRUE,
              plot.points = FALSE, as.table = TRUE)
print(dens_plot)
update(dens_plot, xlab = "Rate")
dim(dens_plot)
dens_plot[2]

#d)

dotplot(mpg ~ hp | cyl + am, data = mtcars,
        as.table = TRUE,
        scales = list(x = list(log=TRUE)),
        par.settings = ggplot2like(),
        lattice.options = ggplot2like.opts())

#e)

dotplot(mpg ~ hp | cyl, data = mtcars,
        groups = am, auto.key = list(columns = 2),
        par.settings = simpleTheme(pch = c(3, 1)),
        scales = list(x = list(log = 2, equispaced.log = FALSE)))

#f)
plot2<-xyplot(mpg~hp|equal.count(mtcars$wt, 5), data=mtcars)
print(plot2)
plot3<-update(plot2, type=c("p","r"), pch=5)
plot(plot3)
update(plot2, pch=19, col="green")

#g)
plot3<-xyplot(mpg~hp, data=mtcars)
plot(plot3, split=c(1,1,2,1))
plot(update(plot3, col="red"), split=c(3,1,4,2), newpage=FALSE)
plot(update(plot3, col="green"), split=c(4,1,4,2),newpage=FALSE)
plot(update(plot3, col="brown"), split=c(2,2,2,2), newpage=FALSE)

#h)
plot(plot3, position=c(0,0,1,.5))
plot(update(plot3, col="red"), position=c(0.7,0.5,1,0.8), newpage=FALSE)
plot(update(plot3, col="green"), position=c(0.0, 0.5, 0.7,1),newpage=FALSE)

# Zadanie 2

#a)
xyplot(carat ~ log(depth)|color, diamonds, 
       abline=c(-1.33,0.515),layout=c(2,4), # abline- ustawia widoczna siatka i linie trendu( zgodnie z podanymi wartosciami) 
       as.table=TRUE, grid=TRUE )

xyplot(carat ~ log(depth)|color, diamonds, abline=c(-1.33, 0.515), layout=c(2,4))

#b)

#desityplot <- skaluje os y

plotdiamonds<-xyplot(carat ~ log(depth)|color, diamonds, 
       abline=c(-1.33,0.515),layout=c(2,4), # abline- ustawia widoczna siatka i linie trendu( zgodnie z podanymi wartosciami) 
       as.table=TRUE, grid=TRUE )
plotdiamonds

plotEF<-plotdiamonds[2:3]
plot(update(plotEF,xlab="Depth",ylab="Carat",col="red",pch=15))

#c)
diamondsSample<-sample(diamonds)
barchart(~carat|price, diamondsSample, equal.count(diamonds$price,3) )

#d)

diamondsSample<-sample(diamonds)
histogram(~price,diamondsSample,nint=8, par.settings = ggplot2like())

#nint - liczba przedzialów histogramu

#e)

p1<-bwplot( ~price,  data = diamonds, auto.key = TRUE)
p1

#p1
p2<-xyplot(carat ~ price,
           data = diamonds,
           type=c("p","smooth"))
p2
#p2
p3<-cloud(price ~ carat * color,
          data = diamonds,
          auto.key = TRUE,
)
p3

#p3
plot(update(p2, col="red"), split=c(3,1,4,2), newpage=FALSE)
plot(update(p3, col="green"), split=c(4,1,4,2),newpage=FALSE)
plot(update(p1, col="brown"), split=c(2,2,2,2), newpage=FALSE)


#f)

plot(p1, position=c(0,0,1,.5)) 
plot(update(p3, col="red"), position=c(0.7,0.5,1,0.8), newpage=FALSE)
plot(update(p2, col="green"), position=c(0.0, 0.5, 0.7,1),newpage=FALSE)

