getwd()
setwd("C:/Users/User/Desktop/pogo/all data")
t = read.csv("tempban.csv")
head(t)
a = as.Date(t$DATE, "%m/%d/%Y")
t$DATE = a
Molten <- melt(t, id.vars = "DATE")
head(Molten)
#plot it
library(ggplot2)
ggplot(Molten, aes(x = DATE, y = value, colour = variable)) + 
  geom_smooth(se = FALSE) + geom_point()+ theme_bw()


getwd()
setwd("D:/Preenon bhai/all data")
t = read.csv("2019.csv")
a=as.Date(t$time, "%m/%d/%Y")
t$time=a
attach(t)
 p1=ggplot(t,aes(x=time))
 p1=p1+geom_line(aes(y=temp),colour="red")
 p1=p1+geom_line(aes(y=sal),colour="blue")
 p1=p1+theme_minimal()
 p1=p1+scale_y_continuous(name = "TEMPERATURE",sec.axis = sec_axis(~ (. +10) , name = "Precipitation (mm)"), 
                          limits = c(0, 40))
 plot(p1)