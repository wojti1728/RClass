

#Ćwiczenia 4-R-pętle i instrukcje warunkowe

#przyklady
#a) if,else if, else

medium <- "UPEL"
obecnosci <- 14
if (medium == "UPEL") {
  print("Obecnosci UPEL")
} else if (medium == "MS TEAMS") {
  print("Obecnosci MS TEAMS")
} else {
  print("Inne zrodla")
}

if (obecnosci > 15) {
  print("Bardzo dobra frekwencja")
} else if (obecnosci <= 15 & obecnosci > 10) {
  print("Dobra frekwencja")
} else {
  print("Slaba frekwencja")
}

#b) ifelse

studenci.df = data.frame( imie = c("Anna", "Ewa",
                                   "Henryk", "Jan"),
                          plec = c("k", "k", "m", "m"),
                          wiek = c(18,31,29,19));
studenci.df

studenci.df$m.mlodsi= ifelse(studenci.df$plec == "m" &
                               studenci.df$wiek < 20, "T", "F")
studenci.df
numer<-20
if (numer < 10) {
  if (numer < 5) {
    rezult <- "bardzo niski"
  } else {
    rezult <- "niski"
  }
  } else if (numer < 100) {
    rezult <- "sredni"
    } else {
    rezult <- "duzy"
    }
print(rezult)

#b)
v<- c(1,7, 8,12,14,19)
v2.df = data.frame( liczba = v);
v2.df
v2.df$parzysta=ifelse((v2.df$liczba%%2)==0,"T","F");
v2.df


#PRZYKŁAD 2: PĘTLA WHILE
v<- 72
while (v>30 ) {
  print("zwolnij!")
  v<- v-7
}
v
#Zadanie 2
#a)
x<-0
while(x<=20)
{
  if(x!=12)
    print(x)
  x<-x+1
}
#b)
i<-1
while(i<=10)
{
  v<-i*3;
  print(v)
  if(v%%8 == 0)
  {
    print(v)
    break;
  }
  i<-i+1;
}
#petla for 
# a) for 
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
for (li in linkedin) {
  if (li > 10) {
    print("niezły wynik!")
  } else {
    print("slabo!")
  }
}
# b) for 2 wersje
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)
# wersja 1
for(p in nyc){
  print(p)
}
# wersja 2
for(i in 1:length(nyc)){
  print(nyc[[i]])
}



head(mtcars)
# zadanie3
# a)
head(mtcars)
displace<-mtcars[,3]
displace
for(i in 1:length(displace)){
  if( displace[i]>=160 )
  { 
    print(displace[[i]])
  }
}
displace2<-sort(displace,TRUE)
displace2
for(i in 1:length(displace2)){
  if(displace2[[i]]<160)
  {
    break;
  }
print(displace2[[i]])
}
mtcars
rivers
head(rivers)
for( i in rivers)
{
  if( i<500){
    print("krotka rzeka")
    print(i)
  }
  else if( i> 2000){
    print("dluga rzeka")
    print(i)
  }
  else{
    print("Normalna rzeka")
    print(i)
  }
}


#b) 

riverslinkedin <- c(16, 9, 13, 5, 2, 17, 14)
head(rivers)
for (li in rivers) {
  if (li<500) {
    print("krotka rzeka!")
  } 
  else if(li>2000){
    print("Dluga rzeka")
  }
  else {
    print(li)
  }
}

#Przykald 4: Apply !!

#a) Apply

m1 <- matrix((1:10),nrow=5, ncol=6)
m1
a_m1 <- apply(m1, 1, sum)
a_m1

#b) Lapply

movies <- c("SPIDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <-lapply(movies, tolower)
movies_lower
str(movies_lower)

movies_lower <-unlist(lapply(movies,tolower))
movies_lower
str(movies_lower)

# zadania 4 - apply

matrix3<-matrix((1:30),nrow=10,ncol=3)
matrix3
sum_row<-apply(matrix3, 1, sum)
sum_row

#b) lapply

item<-list(item1=c(1,2,3,4,5),
            item2=c(4,12,20,28,36),
            item3=c(1,3,5,7,9))
item$item1
mean<-lapply(item,mean)
mean

#ZADANIE 5

v<-75

head(mtcars)

while(v<=80 & v>=30 ){
  print("Twoje prodkosc to ")
  print(v)
  if( v>48 ){
    print("Zwolnij mocno!")
    v<-v-11
  }
  else
  {
    print("Zwolnij!")
    v<-v-6
  }
}


#zadanie 6 RMarkDown

