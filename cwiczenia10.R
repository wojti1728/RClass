library(MASS)
library(corrplot)
library(aplpack)

# Pakiet graphics - R
#Przykłady 2

#a)

library(corrplot)

head(UScereal)
View(UScereal)

var<-UScereal[, c(2:10)]
var

corr_matrix<-cor(var)
corr_matrix

corrplot(corr_matrix, method = "color", type="upper")

#b)

plot(mtcars$hp, mtcars$mpg, type = "n",
     xlab = "Horsepower", ylab = "Gas mileage")

points(mtcars$hp, mtcars$mpg, pch = mtcars$cyl)

text(x = mtcars$hp,
     y = mtcars$mpg,
     labels = mtcars$am, adj = -1)

Cars93[]


#zad2

#a)

par(mfrow=c(1,2))

hist(mtcars$hp,xlab="HorsePower",main="histogram", title="NOrmal hist")

truehist(mtcars$hp,xlab="HorsePower",main="histogram z MASS", title="True hist")

lines(density(Cars93$Horsepower))


#b)
par(mfrow=c(2,2))
plot(Boston$zn, Boston$rad,pch=5,col=7)
title("scatterplot")
sunflowerplot(Boston$zn, Boston$rad,pch=8,col=18)
title("sunflower plot")
boxplot(Boston$rad, Boston$crim,col=14,xlab="rad",ylab="crim")
title("boxplot")
bagplot(Boston$zn,Boston$rad, xlab="zn",ylab="rad")
title("bagplot")

boxplot(crim~rad,data=Boston,log="y",xlab="rad",ylab="crim",main="boxplot")

#c)

plot(x=Cars93$Horsepower,y=Cars93$MPG.city,xlab="Horsepower",
     ylab="Gas mileage",type="n")
points(x=Cars93$Horsepower,y=Cars93$MPG.city,pch=as.character(Cars93$Cylinders))

#inny sposob
plot(Cars93$Horsepower, Cars93$MPG.city,
     pch=as.character(mtcars$cyl), xlab = "Horsepower", ylab = "MPG.city")


#d)

par(mfrow=c(1,1))

index<-Cars93[Cars93$Cylinders == 3,]

#lub (LEPSZE)
index<-which(Cars93$Cylinders==3) # which() wybiera zadane wartosci
index

#plot(Horsepower~MPG.city,data=Cars93,pch=15)


plot(Cars93$Horsepower,Cars93$MPG.city, pch=15)


text(x = Cars93$Horsepower[index],
     y = Cars93$MPG.city[index],
     labels = Cars93$Make[index], font=2)

