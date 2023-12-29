library(readr)
library(readxl)

#Przykłady !!!


#read.csv(file, header=TRUE, sep=",",quote="\""),
#  dec=".", fill=TRUE, comment.char="",

getwd() # sprawdzamy jaki katalog roboczy!
setwd("C:/Users/Wojtek/Desktop/Pliki_r")  # komenda do zmiany katalogu roboczego!
getwd()

pools1<-read.csv("swimming_pools.csv")
str(pools1)

View(pools1)

pools2<-read.csv('swimming_pools.csv', stringsAsFactors=FALSE)
str(pools2)

View(pools2)

write.csv(pools2, "pools2.csv", row.names=TRUE)
test_delim <- read.delim("https://s3.amazonaws.com/assets.datacamp.com/blog_assets/test_delim.txt",
  sep="$")
test_delim

wine_csv<-read.csv("http://monikachuchro.pl/media/wine.csv", header=FALSE, sep=',',skip = 2)
View(wine_csv)
head(wine_csv)

names<-c("Type","Alcohol","Ash","Alcalinity","Flavanoids","Color","Hue")
colnames(wine_csv)<-names
head(wine_csv)

library(dplyr)

wine_csv%>%
  filter(Alcohol>=11 & Alcohol<=12)%>%
  mutate(gramy_alcohol=Alcohol/100)

#Zadaniea

#zad1,a)
hotdogs1<-read.csv("hotdogs.txt",sep="\t",header=FALSE)
str(hotdogs1)
head(hotdogs1)
View(hotdogs1)

index_min<-which.min(hotdogs[["V3"]])
index_max<-which.max(hotdogs[["V2"]])

hotdogs[index_max,]
hotdogs[index_min,]

#zad1,b)

cars_int<-read.delim("http://monikachuchro.pl/media/cars.txt",header = FALSE,sep=',')
head(cars_int)

names<-c("mpg","cylinders","cublinches","hp","weightlbs","time_ti_60","year","brand")
colnames(cars_int)<-names
str(cars_int)
head(cars_int)

#========================
#Przyklady READR:

library("readr")
library("readxl")

properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

setwd("C:/Users/Wojtek/Desktop/Pliki_r/wszystko")

potatoes1<-read_tsv("potatoes.txt", col_names=properties)
View(potatoes1)

potatoes2<-read_delim("potatoes.txt", delim="\t" ,col_names=properties)
View(potatoes2)

#zadanie2

#a)
potatoes_frag<-read_tsv("potatoes.txt",n_max = 50,skip=6)
View(potatoes_frag)

#b)
potatoes_char<-read_tsv("potatoes.txt",col_names=properties,col_types = "cccccccc")
potatoes_char

#c)
write_csv(potatoes_frag,"potatoes_frag.csv",col_names=TRUE)

#d)
write.table(mtcars,"mtcars2.txt")
getwd()


#e)
write_csv(iris[,c("Sepal.Length","Sepal.Width")],"iris_subset_1.1.csv")
write.csv(iris[,c("Sepal.Length","Sepal.Width")],"iris_subset_2.1.csv")

iris_csv<-read.csv("iris_subset_1.1.csv",header = TRUE,sep = ',' )
View(iris_csv)

iris_csv2<-read.csv("iris_subset_2.1.csv",header = TRUE,sep = ',' )
View(iris_csv2)


#f)
library("readxl")
excel_sheets("urbanpop.xlsx")
pop1<-read_excel("urbanpop.xlsx",sheet=1)
pop1
pop2<-read_excel("urbanpop.xlsx",2)
pop2
pop3<-read_excel("urbanpop.xlsx",3)
pop3
str(pop3)
listaXlsx<-list(pop1,pop2,pop3)
str(listaXlsx)



