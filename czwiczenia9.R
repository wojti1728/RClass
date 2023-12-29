library(MASS)
library(corrplot)

library(aplpack)

#Cwiczenia 8
# R- pakiet graphics

#Przykłady 1:

#a)
str(whiteside)
plot(whiteside)

View(whiteside)

#b)
plot(whiteside$Temp, whiteside$Gas,
     type = "p", pch=17, col="springgreen", xlab = "Outside temperature",
     ylab = "Heating gas consumption")
title("Scatter plot")
abline(a=7, b=-0.5, lty=2, col="red") # rysuje prosta linie ( w tym wypadku y=ax+b, gdzie lty=2 );

#c)
par(mfrow=c(2,2)) # odpowiedzialna funkcja za dzielenie obszaru pod wykresy
plot(whiteside$Temp, col="#EE9A49")
title("First graph")
boxplot(whiteside$Temp, col="orange")
title("Second graph")
plot(whiteside$Gas, col="#EE90AA")
title("Third graph")
boxplot(whiteside$Gas, col="red")
title("Fourth graph")


#Zadania

#zad1

#a)
plot(Cars93$Price, Cars93$Max.Price,
     type = "p", pch=17, col="red")
title("Price relationship")
points(Cars93$Price,Cars93$Min.Price, col="blue")

plot(Cars93$Price, Cars93$Max.Price, pch=2, col="red")
points(Cars93$Price, Cars93$Max.Price, col="blue")
#b)

head(Cars93)
par(mfrow=c(1,2))
plot(Cars93$Luggage.room, Cars93$RPM,
     pch=4, col="grey", xlab = "Luggage room", ylab = "RPM")
title("Original representation")
plot(Cars93$Luggage.room, Cars93$RPM,
     pch=20, col="green", xlab = "Luggage room", ylab = "RPM", log = "xy")
title("Log-log plot")

#c)
par(mfrow=c(1,3))
tabela<-table(Cars93$Cylinders)

pie(Cars93$Cylinders)# wykres kolowy

hist(Cars93$Price, col=12) # histogram

barplot(table(Cars93$Cylinders), las = 2, cex.names = 0.5, col="blue") # wykres słupkowy

