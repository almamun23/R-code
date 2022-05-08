library(tidyverse)
library(cowplot)
setwd("F:/pogo/all data")
p = read.csv("2018.csv")
q = read.csv("2019.csv")
r = read.csv("2020.csv")
s = read.csv("2021.csv")

a = as.Date(p$time)
b = as.Date(q$time)
c = as.Date(r$time)
d = as.Date(s$time)

p$time = a
q$time = b
r$time = c
s$time = d
head(p)
#str(p)
#head(p)
x18 = ggplot(p, aes(x=time, y=temp))+geom_smooth(aes(colour=station), se = FALSE)+theme_bw()
x19 = ggplot(q, aes(x=time, y=temp))+geom_smooth(aes(colour=station), se = FALSE)+theme_bw()
x20 = ggplot(r, aes(x=time, y=temp))+geom_smooth(aes(colour=station), se = FALSE)+theme_bw()
x21 = ggplot(s, aes(x=time, y=temp))+geom_smooth(aes(colour=station), se = FALSE)+theme_bw()

ggarrange(x18, x19, x20, x21, nrow = 2, ncol = 2)
       