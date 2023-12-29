glimpse(gapminder)
library(gapminder)
library(dplyr)
gapminder
glimpse(gapminder)

today<-Sys.Date()
today
unclass(today) #wartosc liczbowa tej daty i okresla ilosc dni ktora uplynela od 1970-01-01
now<-Sys.time()
now
Sys.timezone()


as.Date('1915-6-16')
str1 <- "2020-11-03"
str1
date1<-as.Date(str1, format="%Y-%m-%d")
date1
str(date1)
str2<- "2012-3-12 14:23:08"
time2<-as.POSIXct(str2, format="%Y-%m-%d %H:%M:%S") #drukuje date, czas, 
time3<-as.POSIXlt(str2, format="%Y-%m-%d %H:%M:%S")
typeof(time2)
typeof(time3)
time2
time3
cat(time2)
unlist(time3)
today <- Sys.Date()

format(today, format="%B %d %Y")
today
weekdays(today)
history_date<- as.Date(-179,origin="1942-06-04") 
history_date

# Zadanie 1:
#a)
date3<-as.Date("20/Lipiec/2020", format="%d/%B/%Y")
date3



date3<-as.Date("30/Lipiec/2020", format="%d/%B/%Y")
date3
date4<-as.Date("15/1/2020", format="%d/%m/%Y")
date4
date5<-as.Date("1 Sty 20", format="%d %B %y")
date5

str1 <- "30/Lipiec/2020"
date1<-as.Date(str1,format="%d/%B/%Y")
date1

#b)
day1<-as.Date("2020-10-15")
day5<-as.Date("2020/02/11", format="%Y/%d/%m")
day5-day1

#c)
bdays<-c(tyrkey=as.Date('1915-06-16'), fisher=as.Date('1890-2-17'), cramer=as.Date('1893-09-25'))
bdays
weekdays(bdays)

#d)
time<-"2020-04-19 7:01:00"
mydate<-as.POSIXct(time, format="%Y-%m-%d %H:%M:%S")
mydate

mydate<-"2020-3-19 7:01:00"
time<-as.POSIXct(mydate, format="%Y-%m-%d %H:%M:%S")
time

#e)
count_date<-as.Date(+100,origin=today)
count_date<-as.Date(+100,origin="2020-11-10")
count_date

#f)
my_fav_dates<-c(as.POSIXct("2005-4-19 8:01:00"),
as.POSIXct("2006-4-19 11:01:00"),
as.POSIXct(" 2008-4-19
7:01:00"))
difference<-diff(my_fav_dates)
mean(difference)
max(difference)
min(difference)

#g)
day(my_fav_dates)

#h)
day1<-as.POSIXct("2000-11-10 12:00:00")
day2<-as.POSIXct("2020-11-10 14:00:00")
difftime(day2,day1,units="secs")



#Przykład 2

library(lubridate)
mdate<-ymd(20211109)
year(mdate)
month(mdate)
day(mdate)
mdy("11/09/21")

date2<- mdy(c(' 07/02/2016 ', '7 / 03 / 2016', ' 7 / 4 / 16 '))
date2
date3<- ymd(c("20160724","2016/07/23","2016-07-25"))
date3
time_date<- ymd_hms("2021-11-13 15:30:30")
wday(time_date, label=TRUE)


Sys.timezone(location = TRUE)
OlsonNames(tzdir = NULL)
with_tz(time_date, "America/Chicago")
now()
today() 


#Zadanie 2

#a)
b_day<-ymd(20010403)
b_day
year(b_day)
month(b_day)
day(b_day)
leap_year(b_day)

#b)
vector<- c('30-2020-01', '15/2020/02')
vector

class_d_h<-now()
class_d_h

#c)
class_d_h_a<-now()
with_tz(class_d_h_a,tzone="Australia/Perth")

date4<- dym(vector)
date4
#d)

class_d_h<-now()
class_d_h

#e)
class_d_h_a<-now()
with_tz(class_d_h_a, tzone ="Australia/Perth")

#f)
clas_d_f_f<-force_tz(class_d_h,"Australia/Sydney")
clas_d_f_f

#g)
class_d_h<class_d_h+hours(2)
class_d_h


#h)
round_date(class_d_h, unit="minutes") #hours

#i)
OlsonNames()
date_Auckland<-ymd_hms("2020-10-10 10:10:00",tz="Pacific/Auckland")
date_Auckland
date_Arizona<-ymd_hms("2020-10-10 10:10:00",tz="America/Phoenix")
date_Arizona
date_Arizona-date_Auckland

difftime(date_Auckland, date_Arizona, units="hours")

#j)
difftime(class_d_h, ymd("20010403"), units="weeks")

#k)
data<-ymd(20211110)
format(data, format="%d %b %Y")
format(data, format="%y %m %d")
format(data, format="%Y %B %d")

dat
