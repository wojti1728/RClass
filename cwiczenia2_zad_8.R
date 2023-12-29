#zad 5
seq(1:30); seq(30:1) 
seq(from=0, to=1, by=0.25) 
seq(from=20, to=5, length.out=10)

#zad6
seq(from=-6, to=6, by=2)

seq(from=-2, to=5, length.out=15)

normal<-rnorm(1000,mean=10,sd=1)

normal

pow<-c(rep(seq(from=1,to=10),3))

pow

w1<-c(2:17)
w1

mw1<-matrix(w1,ncol=4)
mw1
mw2<-matrix(w1,nrow=4,byrow = T)
mw2
mw12<-mw1*mw2
mw12
mw1212<-mw12[mw12>=20]
mw1212
a<- c(9,10,11) 
b<-c(6,9,12) 
c<-c(16,18,20) 
mabc<-matrix(c(a,b,c),ncol=3, byrow=TRUE) 
?colnames 
rownames(mabc)<-c(“a”,”b”,”c”)

w<-c("US non-US","A New Hope","The Empire Strikes  Back","Return od the Jedi")
a1<-c("460.998 314.4")
b1<-c("290.475 247.9")
c1<-c("309.206 165.8")




m1abc<-matrix(c(a1,b1,c1),ncol=3, byrow=TRUE)
m2abc<-matrix()
rownames(w)<-
m1abc
rownames

#zad 7

m1 <- matrix(1:9,ncol=3)
m2<- matrix(1:9, nrow=4) 
m3<- matrix(1:9, nrow=3, byrow=TRUE) 
m1
m2
m3

a<- c(9,10,11)
b<-c(6,9,12) 
c<-c(16,18,20) 
mabc<-matrix(c(a,b,c),ncol=3, byrow=TRUE) 
mabc
?colnames 
rownames(mabc)<-c('a','b','c')

m11<-m1+2
m11
m0 <- matrix(NA, 4,0)
rownames(m0)

m2 <- cbind(1, 1:4)
m2
colnames(m2, do.NULL = FALSE)

colnames(m2) <- c("x","Y")

rownames(m2) <- rownames(m2, do.NULL = FALSE, prefix = "Obs.")
m2
m1
m1[2,3]
m1[2,]
m1[,1]
# zadanie 8
w1<-c(2:17)
w1
mw1<-matrix(w1,ncol=4)
mw1
mw2<-matrix(w1,nrow=4,byrow = T)
mw2
mw12<-mw1*mw2
mw12
mw1212<-mw12[mw12>=20]
mw1212

w<-c("A New Hope","The Empire Strikes Back","Return od the Jedi")
w2<-c("US","no-US")
a1<-c("460.998", "314.4")
b1<-c("290.475", "247.9")
c1<-c("309.206", "165.8")
d1<-c(NA,NA)


m1abc<-matrix(c(a1,b1,c1),nrow=3, byrow=TRUE)
m1abc
rownames(m1abc)<-w
colnames(m1abc)<-w2
m1abc
m1abc[3,]
m1abc[1,2]
m1abc
a <- rnorm(9,mean=6,sd=12) 
a
mat<-matrix(a,nrow=3,byrow=F)
mat

