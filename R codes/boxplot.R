setwd("F:/pogo/all data")
p = read.csv("20_21_do.csv")
ggplot(p, aes(x=station, y=do, fill=station, cex.labs = 2)) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, hjust = 1))+  labs(y = expression(DO~(mgL^-1)), x = "Stations")+
  theme(axis.text=element_text(size=12),axis.title=element_text(size=14,face="bold"))

setwd("F:/pogo/all data")
p = read.csv("20_21.csv")
ggplot(p, aes(x=station, y=temp, fill=station, cex.labs = 2)) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, hjust = 1))+  labs(y = "Temperature (\u00B0C)", x = "Stations")+
  theme(axis.text=element_text(size=12),axis.title=element_text(size=14,face="bold"))

setwd("F:/pogo/all data")
p = read.csv("20_21.csv")
ggplot(p, aes(x=station, y=sal, fill=station, cex.labs = 2)) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, hjust = 1))+  labs(y = "PSU (Practical Salinity Unit)", x = "Stations")+
  theme(axis.text=element_text(size=12),axis.title=element_text(size=14,face="bold"))

setwd("F:/pogo/all data")
p = read.csv("20_21_chl.csv")
ggplot(p, aes(x=station, y=chl, fill=station, cex.labs = 2)) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, hjust = 1))+  labs(y = expression(Chlorophyll-a~(mg~m^-3)), x = "Stations")+
  theme(axis.text=element_text(size=12),axis.title=element_text(size=14,face="bold"))

setwd("F:/pogo/all data")
p = read.csv("20_21_ph.csv")
ggplot(p, aes(x=station, y=ph, fill=station, cex.labs = 2)) + 
  geom_boxplot(alpha=0.3) +
  theme(legend.position="none", axis.text.x = element_text(angle = 30, hjust = 1))+  labs(y = "pH (Total Scale)", x = "Stations")+
  theme(axis.text=element_text(size=12),axis.title=element_text(size=14,face="bold"))


