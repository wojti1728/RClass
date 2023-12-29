data<-c("K","M","M","K")
data
factor(data, levels=c("K","M"),ordered=T)

#Przyklad 1:Data frame

mydata <- data.frame(x=c(11,12,14), y=c("a","b","b"), z=c(T,F,T)) 
mydata
class(mydata); 
str(mydata)
mydata$z

mydata[["x"]] ; 

mydata[,1] 

mydata[1,3] ; 

mydata$x[[1]]

subset(mydata, subset=x<=12)
position<-order(mydata$z)
mydata[position, ]

# zadanie 1


mydata <- data.frame(name=c("Mercury","Vensus",'Earth','Mars','Jupiter','Saturn ','Uranus','Neptune'), 
                     type=c(rep("Terrestrial Planet",4),rep("Gas giant",4)), 
                     diameter=c(0.382,0.949,1.000,0.532,11.209,9.449,4.007,3.883),
                     rotation=c(58.64,-243.02,1.00,1.03,0.41,0.43,-0.72,0.67),
                     rings=c(F,F,F,F,T,T,T,T)) 
mydata
mydata$diameter[[4]]       
mydata[7,]
class(mydata)
str(mydata)
mydata["rings"]
plantes_rings = subset(mydata,subset=rings==T)
plantes_rings
list_sred = subset(mydata,subset=diameter<1)
list_sred

# faktor

ankieta<-c("M","K","K","M","M")
f_ankieta<-factor(ankieta)
f_ankieta
levels(f_ankieta)<-c("Kobieta","Mężczyzna")
f_ankieta
summary(f_ankieta)

#lista
my_vector <- 1:10
my_vector
my_matrix <- matrix(1:9, ncol = 3)
my_matrix
my_df <- mtcars[1:10,]
my_df


my_list <-list(my_vector, my_matrix, my_df)
my_list


# zadanie 2 - a)
speed_factor<-c("medium","slow","slow","medium","fast")
f_speed_factor<-factor(speed_factor,levels=c("slow","medium","fast"),ordered = T)
f_speed_factor
class(f_speed_factor)
str(f_speed_factor)
sf2<-f_speed_factor[2]
sf2
sf5<-f_speed_factor[5]
sf5
summary(f_speed_factor)
levels(f_speed_factor)<-c(sf2,sf5)


## b) utwórz listę
lista_1<-list(title<-"The Shining", actors<-c("Jack Nicholson","Shellley Duvall","Danny Lloyd",
               "Scatman Crothers","Barry Nelson"), reviews<-c("Good","OK","Good","Perfect","Good","Perfect", "Good"))
lista_1
str(actors)
str(actors[2])
f_reviews<-factor(lista_1[reviews],levels=c("BAD","OK","Good","Perfect"))
f_reviews
levels(f_reviews)

lista_2<-list(title<-"The Shining", actors<-c("Jack Nicholson","Shellley Duvall","Danny Lloyd",
                                              "Scatman Crothers","Barry Nelson"), reviews<-factor(c("Good","OK","Good","Perfect","Bad","Perfect", "Good"),levels=c("Bad","OK","Good","Perfect")))
lista_2


## przyklad 3 - FUNKCJE
mycount<-function(x){
  sum(x<=15,na.rm=TRUE)
  } 
x1<-c(2.4, 3.4, 8, 9.2, NA, 8, 29, 35)
mycount(x1)
my_equation<-function(x, y,z){
  result<-x+y^z
  print(result)
}
my_equation(1,2,3)

#ZADANIE 3
# a)
met_on_cal<-function(x){
  result<-x*39.37
  print(result)
  }
met_on_cal(10)

# b)
blad_bezw<-function(y){
  sred<-mean(y)
  y1<-c(y-sred)
  res<-matrix(c(y1,y),ncol=2)
  print(res)
}
vec<-c(2,6,23,4,8)
blad_bezw(vec)
help(print)
y<-c(1:10)
blad_bezw(y)

#PRZYK�ADY 4
mtcars
#zajecia 4
#sprawdzanie katalogu roboczego: getwd()
#datasets::(wybieramy pakiet danych)
summary(mtcars)
head(mtcars)  
getwd()
d_pogodowe <- read.delim("dane_pogodowe.txt", sep="\t", header=FALSE) 
print(d_pogodowe)
colnames(d_pogodowe)<-c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII") 
head(d_pogodowe)
colnames
rownames(d_pogodowe)<- c(1955:2014) 
head(d_pogodowe)
print(d_pogodowe)
mean(d_pogodowe$VII) 
mean(d_pogodowe[['VII']])
mean(d_pogodowe[,7]) 

#ZADANIE 4
#a)
install.pacages(nycflights)
install.packages
library(nycflights13)
flights
head(flights)
tail(flights)
str(flights)
summary(flights)

#b)
d_cars <- read.delim("cars.txt", sep=",", header=FALSE) 
print(head(d_cars))
colnames(d_cars)<-c("mpg", "cylinders", "cubicinches", "hp", "weightlbs", "time-to-60", "year", "brand") 
rownames(d_cars)<- c(1:(125+136))
print(head(d_cars))
