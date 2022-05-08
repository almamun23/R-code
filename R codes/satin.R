getwd()
setwd("F:/pogo/all data")
p=read.csv("satin.csv")
ggplot(p, aes(x = sstsat, y = sstin))
