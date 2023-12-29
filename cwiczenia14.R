install.packages("plotly")
install.packages("dplyr")
library("plotly")
library("tidyverse")
library("lattice")
library("latticeExtra")
library("ggplot2")
library("dplyr")

#Cwiczenia 12, R-plotly

#Przykłady

#a)
plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length) # dwie zmiennne wiec wykres rozrzutu


plot_ly(data = iris, x = ~Sepal.Length, y = ~Petal.Length)%>% 
  add_markers() ## dostaniwmy tak samo cos 


#b)
iris%>%
  filter(Species =="setosa")%>% # filtruje nam tylko setosy
  plot_ly(x = ~Sepal.Width)%>%  # filtruje  
  add_histogram(nbinsx=6, color = I("darkgreen"), opacity = 0.5)

#c)

iris%>%
  plot_ly(x=~Sepal.Width, y=~Species)%>%
  add_boxplot()

#d)
plot_ly(x = ~Sepal.Length, y = ~Petal.Length, data = iris,
        marker = list(size = 12,
                      color = 'rgba(255, 182, 193, .9)',
                      line = list(color = "rgba(100, 20, 20, .5)",
                                  width = 5)))%>%
  add_markers()%>%
  layout(title = "Scatterplot")

#e)
iris %>%
  plot_ly(x = ~Sepal.Length, y = ~Petal.Length, color=~Species) %>%
  add_markers(colors="Dark2")


#ZADANIE 1, dane mtcars

#a)

mtcars%>%  
  plot_ly(x= ~mpg)%>%
  add_histogram()


#b)

mtcars%>%
  filter(cyl==4)%>%
  plot_ly(x=~mpg,y=~disp,marker=list(color=mtcars$am))%>%
  add_markers()

mtcars%>%
  filter(cyl==4)%>%
  plot_ly(x=~mpg, y=~disp, color = ~am)

#c 
mtcars%>%  
  plot_ly(x=~disp,y=~mpg)%>%
  add_histogram2d(nbinsx=3, nbinsy=3)
 
#d)

mtcars%>%
  plot_ly(x= ~cyl, y= ~mpg)%>%
  add_boxplot()%>%
  layout(title= "Boxplot")


mtcars%>%
  plot_ly(x=~mpg, y=~cyl)%>%
  layout(title="Boxplot")

#e)

mtcars%>%
  plot_ly(y=~mpg,x=~disp,color=~cyl)%>%
  add_markers()%>%
  layout(title="New colors")


#f)

pal<-c('blue','pink','green')
mtcars%>%
  plot_ly(x= ~mpg, y= ~disp, color=~as.factor(cyl) )%>%
  add_markers(colors=pal)%>%
  layout(title="My colors")


#Przykłady 2:

#a)
g_plot<-ggplot(data=iris, aes(x=Sepal.Length, y=Petal.Length, color=Species))+
  geom_point(alpha=0.5)
ggplotly(g_plot)

#b)

iris %>%
  plot_ly(x = ~Sepal.Length) %>%
  add_histogram(xbins = list(start=4, end=8, size=1))

#c)

iris %>%
  plot_ly(x = ~Sepal.Length, y=~Petal.Length, color=~Species) %>%
  add_markers(marker = list(symbol = "diamond", size = 6))


#d)
iris %>%
  filter(Sepal.Length>5)%>%
  count(Species) %>%
  plot_ly(x = ~Species, y = ~n, hoverinfo = "y") %>%
  add_bars()

#e)
iris %>%
  plot_ly(x = ~Sepal.Length, y=~Petal.Length, color=~Species) %>%
  add_markers(marker = list(opacity = 0.5)) %>%
  layout(xaxis = list(title="Sepal Length", showgrid=FALSE),
         yaxis = list(title="Petal Length"), paper_bgcolor="#ababab")

#f)

model<-lm(Petal.Length~Sepal.Length, data=iris)
model
iris%>%
  plot_ly(x = ~Sepal.Length, y=~Petal.Length, color=~Species) %>%
  add_markers(showlegend = FALSE) %>%
  add_lines(y = ~fitted(model))


#Zadanie 2.Dane: diamonds

#a)

View(diamonds)

g_plot<-ggplot(data=diamonds, aes(x=cut, fill=clarity))+geom_bar()
ggplotly(g_plot)


#b)
diamonds%>%
  filter(color>='G')%>%
  filter(color<='J')%>%
  plot_ly(x=~carat)%>%
  add_histogram(xbins = list(start=0, end=7, size=1),color=~color)


#c)

linia_trendu<-lm(price~carat, data=diamonds)
linia_trendu

diamonds%>%
  plot_ly(x=~carat,y=~price)%>%
  layout(title="Scatterplot",
         xaxis=list(title="Carats",showgrid=FALSE),
         yaxis=list(title="Prices",showgrid=FALSE),
         paper_bgcolor="#cbabba",
         plot_bgcolor="abadba")%>%
  add_markers(marker=list(opacity=0.5),
              colors="Set1")%>%
  add_lines(y=~fitted(linia_trendu))

#d)
p1<-diamonds%>%
  plot_ly(x=~carat,color=~color)%>%
  add_boxplot() # wykres ramka wąsy !!
p1
p2<-diamonds%>%
  plot_ly(x=~carat)%>%
  add_histogram()
p2
p3<-diamonds%>%
  plot_ly(x=~carat,y=~price)%>%
  add_histogram2d()
p3
subplot(p1,p2,p3,nrows=1)




