getwd()
setwd("F:/pogo/all data")
p=read.csv("checking.csv")
str(p)
a = as.Date(p$Date, "%m/%d/%Y")
p$Date = a
head(p)
str(p)
ggplot(p, aes(Date,Stations, col=Variables)) + 
  geom_point(position = position_dodge(width=0.75), size=3) + 
  stat_smooth() +theme_ipsum(base_size = 16)+ theme(legend.position="bottom") +theme(legend.title = element_blank())+
  theme(legend.text = element_text(colour="black", size=16,face="bold"))

library(ggplot2)
library(reshape2)
d <- melt(p, id.vars="date")
head(d)
  d = d[-c(314),]
  write.csv(d,"F:/pogo/all data/recheck.csv")
  # Everything on the same plot
library(tidyverse);
data = d[complete.cases(d),] 
ggplot(data, aes(date,value, col=variable)) + 
  geom_point(position = position_dodge(width=0.75), size=3) + 
  stat_smooth() + theme_bw()

