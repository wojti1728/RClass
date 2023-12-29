1+2
6+13
(5+7)/2
#co to jest xd
34%%6
x<-42
y<-
  5
x
y
y<-c(5,8,14,91,3,36,14,30)
z<-x+y
z
y+6
y
y[5]
y[1:3]
#zad 2
a<-15
a
b<-c(4,7,10,15,24)
b
b<-b/2
b
c<-c(4.6,8,10.1,9)
d<-c(7.9,2.1,8,12.5)
d
d[c(1,3,5)]
suma_cd <- c+d
dc <- d/c
is.logical(d%%3)
c[c(4)]
d[c(3:5)]
#zad 3
zmienna_numeric <-42

zmienna_character<-"data science"

zmienna_logical <-FALSE

class(zmienna_numeric)

zmienna_numeric_int<-as.integer(zmienna_numeric)

class(zmienna_numeric_int)

napiwki_vector<-c(140,50,20,120,240)

dni_vector<-c("Poniedizlek","Wtorek","Środa","Czwartek","Piątek")

names(napiwki_vector)<-dni_vector

napiwki_vector

napiwki_wt_czw <- napiwki_vector[c(2,4)]

mean(napiwki_vector)

sd(napiwki_vector) #standart divition - odchylenie standardowe

napiwki_vector>100

sum(napiwki_vector>100)

x3<-c(5,8,NA,91,3,NA,14,30,100)

sum(x3)
mean(x3)

mean(x3,na.rm=TRUE)

mean(x3)

#zad 4

lista_obecnosci<-c(25,30,16,20,15,21,12)

lista_obecnosci[c(1,5)]

class(lista_obecnosci)

zmienna_numeric<-as.integer(zmienna_numeric)

class(zmienna_numeric)

dni_tyg<-c("Poniedizlek","Wtorek","Środa","Czwartek","Piątek","Sobota","Niedziela")

names(lista_obecnosci)<-dni_tyg

lista_obecnosci

dni_tyg[lista_obecnosci == min(lista_obecnosci)]

dni_tyg[lista_obecnosci == max(lista_obecnosci)]

ile_dni<-sum(lista_obecnosci>=20)

ile_dni

liczebnosc_grup<-c(25,30,18,20,15,21,15)

dni_tyg[lista_obecnosci==liczebnosc_grup]

dni_tyg[lista_obecnosci<liczebnosc_grup/2]

wynik<-sum(lista_obecnosci>15)

wynik

#zad 5 !!!

seq(1:30) 
seq(30:1)
seq(from=0, to=1, by=0.25)
seq(from=20, to=5, length.out=10)
a<-rnorm(100,mean=0,sd=10)
a
hist(a)
a<-4
a
rep(1:4, 5) 

m1 <-matrix(1:9,ncol=3) 
m1
m2<-matrix(1:9, nrow=3) 
m2
m3<-matrix(1:9, nrow=3, byrow=TRUE)
m3
help(seq)
