setwd("F:/pogo/all Data")
#install.packages("car")
#install.packages("lubridate")
# load the ggplot2 library for plotting
library(ggplot2)
library(ggpubr)
options(stringsAsFactors = FALSE)
library("car")
# import data
t = read.csv("Argentina_EPEA.csv")
a = as.Date(t$DATE)
t$DATE = a
head(t)
str(t)
# plot the data using ggplot
t1 = ggplot(data = t, aes(x = DATE, y = Temp)) +  labs(x = "Date", y = "Temperature (\u00B0C)")+ theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5)) + geom_point()+geom_smooth(method = "gam")
t2 = ggplot(data = t, aes(x = DATE, y = sal)) + geom_point() + labs(x = "Date", y = "Salinity (PSU)")+ theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5))+geom_smooth(method = "loess")
t3 = ggplot(data = t, aes(x = DATE, y = do)) + geom_point() + labs(x = "Date", y = "DO")+ theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5))+geom_smooth(method = "loess")
t4 = ggplot(data = t, aes(x = DATE, y = pH)) + geom_point() + labs(x = "Date", y = "pH")+ theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5))+geom_smooth(method = "loess")
t5 = ggplot(data = t, aes(x = DATE, y = chla)) + geom_point() + labs(x = "Date", y = expression(Chlorophyll-a~(mgL^-1)))+ theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5))+geom_smooth(method = "loess")
plot(t1)
plot(t2)
plot(t3)
plot(t4)
plot(t5)
ggarrange(t1, t2, t3, t4, t5, labels = c("A", "B", "C", "D", "E"), ncol = 2, nrow = 3)

 View(msleep)