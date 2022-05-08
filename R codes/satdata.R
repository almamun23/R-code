getwd()
setwd("F:/pogo/all data")
p = read.csv("ind.csv")
str(p)
a = as.Date(p$date, "%m/%d/%Y")
p$date = a
head(p)
str(p)
ggplot(data = p, aes(x = date, y = sst)) +  geom_point(aes(x=date,y=orgsst), color = "red") + labs(x = "Date", y = "Temperature (\u00B0C)")+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5)) +geom_path(color = "blue", size = 1) +theme_bw()#+geom_smooth(method = "gam", se = FALSE)


getwd()
setwd("F:/pogo/all data")
p = read.csv("col.csv")
str(p)
a = as.Date(p$date, "%m/%d/%Y")
p$date = a
head(p)
str(p)
ggplot(data = p, aes(x = date, y = chl)) +  geom_point(aes(x=date,y=chl), color = "red") + labs(x = "Date", y = expression(Chlorophyll-a~(mg~m^-3)))+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5)) +theme_bw()+geom_path(color = "blue", size = 1)#+ stat_smooth(se = FALSE)


getwd()
setwd("F:/pogo/all data")
p = read.csv("peru.csv")
str(p)
a = as.Date(p$date, "%m/%d/%Y")
p$date = a
head(p)
str(p)
ggplot(data = p, aes(x = date, y = sst)) +  geom_point(aes(x=date,y=sst), color = "red") + labs(x = "Date", y = "Temperature (\u00B0C)")+ 
  theme(axis.text.x = element_text(angle = 45, vjust = 0.5, hjust=.5)) +geom_smooth(method = "gam", se = FALSE) +theme_bw()

