setwd("/Users/matteo/Desktop/")

library(dplyr)
library(gplots) 
library(ggplot2)

#Read data
stats<-read.csv("CRISPR_table_survival_devtime.txt",header=TRUE, sep="\t")

#Count KO vs. ND: failed to eclose or failed to pupate more?
KO<-stats[(stats$CRISPR_deletion_YorN =="YES" &!is.na(stats$CRISPR_deletion_YorN)) ,] #63 
ND<-stats[(stats$CRISPR_deletion_YorN =="NO" &!is.na(stats$CRISPR_deletion_YorN)) ,] #196

#failed pupation
failed1<-KO[(KO$pupated_YorN =="NO") ,] #6
success1<-KO[(KO$pupated_YorN =="YES") ,] #56
failed2<-ND[(ND$pupated_YorN =="NO") ,] #5
success2<-ND[(ND$pupated_YorN =="YES") ,] #191

#number failed eclosion in general #number for those pupated
failed1<-success1[(success1$eclosed_YorN =="NO") ,] #10 #2 of those pupated (out of success1)
success1<-success1[(success1$eclosed_YorN =="YES") ,] #52
failed2<-success2[(success2$eclosed_YorN =="NO") ,] #22 #17 of those pupated
success2<-success2[(success2$eclosed_YorN =="YES") ,] #176

###PROPORTION TEST
#PUPATION FAIL
#KO 6/62 #0.096
#ND 5/196 #0.0255
res <- prop.test(x = c(6,5), n = c(62,196))
#p-value = 0.03938

#ECLOSION FAIL
#KO 10/62 #0.16
#ND 22/198 #0.11
res <- prop.test(x = c(10,22), n = c(62,198))
res
#p-value = 0.4076 #NOT SIGNIFICANT



#DEVELOPMENTAL TIME ANALYSES
stats<-read.csv("CRISPR_table_survival_devtime.txt",header=TRUE, sep="\t")
KO<-stats[(stats$CRISPR_deletion_YorN =="YES" &!is.na(stats$CRISPR_deletion_YorN)) ,] #63 
ND<-stats[(stats$CRISPR_deletion_YorN =="NO" &!is.na(stats$CRISPR_deletion_YorN)) ,] #196

#need to change dates formatting
library(lubridate)
#parse_date_time("17-06-2022", orders = c("dmy"))

KO$day_injection2<-parse_date_time(KO$day_injection, orders = c("dmy"))
KO$day_hatched2<-parse_date_time(KO$day_hatched, orders = c("dmy"))
KO$day_pupated2<-parse_date_time(KO$day_pupated, orders = c("dmy"))
KO$day_eclosed2<-parse_date_time(KO$day_eclosed, orders = c("dmy"))

ND$day_injection2<-parse_date_time(ND$day_injection, orders = c("dmy"))
ND$day_hatched2<-parse_date_time(ND$day_hatched, orders = c("dmy"))
ND$day_pupated2<-parse_date_time(ND$day_pupated, orders = c("dmy"))
ND$day_eclosed2<-parse_date_time(ND$day_eclosed, orders = c("dmy"))


#FROM INJECTION TO HATCHING
KO$day_injtohatch<-difftime(KO$day_hatched2,KO$day_injection2, units="days")
ND$day_injtohatch<-difftime(ND$day_hatched2,ND$day_injection2, units="days")
alltogether<-rbind(KO,ND)
alltogether$CRISPR_deletion_YorN <- factor(alltogether$CRISPR_deletion_YorN, levels = c("NO", "YES"))

#PLOT #Jitter FROM INJECTION TO HATCHING 
p <- ggplot(alltogether)  + theme(panel.background = element_blank(),axis.line = element_line(colour = "gray39")) + geom_boxplot(aes(x = CRISPR_deletion_YorN,y=day_injtohatch)) + geom_jitter(aes(x = CRISPR_deletion_YorN,y=day_injtohatch),width = 0.1,height=0.1,shape=21, colour="black",fill="#C8C9CA") + labs (y= "days between injection and hatching", x = NULL)
p

t.test(alltogether$day_injtohatch~alltogether$CRISPR_deletion_YorN)
#t-test p-value = 6.836e-10  
#difference in days confidence interval
#0.6187023 days - 1.1479223 days


#FROM HATCHING TO PUPATION
KO$day_hatchtopup<-difftime(KO$day_pupated2,KO$day_hatched2,units="days")
ND$day_hatchtopup<-difftime(ND$day_pupated2,ND$day_hatched2, units="days")
alltogether2<-rbind(KO,ND)
alltogether2$CRISPR_deletion_YorN <- factor(alltogether2$CRISPR_deletion_YorN, levels = c("NO", "YES"))

#Jitter HATCHING TO PUPATION
p <- ggplot(alltogether2) + theme(panel.background = element_blank(),axis.line = element_line(colour = "gray39")) + geom_boxplot(aes(x = CRISPR_deletion_YorN,y=day_hatchtopup)) + geom_jitter(aes(x = CRISPR_deletion_YorN,y=day_hatchtopup),width = 0.05,height=0.1,shape=21, colour="black",fill="#C8C9CA") + labs (y= "days between hatching and pupating", x = NULL) + ylim(7, 25) 
p

t.test(alltogether2$day_hatchtopup~alltogether2$CRISPR_deletion_YorN)
#p-value = 0.000409
#difference confidence interval
#0.5745031 days - 1.9289934 days


#FROM PUPATION TO ECLOSION
KO$day_puptoecl<-difftime(KO$day_eclosed2,KO$day_pupated2,units="days")
ND$day_puptoecl<-difftime(ND$day_eclosed2,ND$day_pupated2, units="days")
alltogether2<-rbind(KO,ND)
alltogether2$CRISPR_deletion_YorN <- factor(alltogether2$CRISPR_deletion_YorN, levels = c("NO", "YES"))

p <- ggplot(alltogether2) + theme(panel.background = element_blank(),axis.line = element_line(colour = "gray39")) + geom_boxplot(aes(x = CRISPR_deletion_YorN,y=day_puptoecl)) + geom_jitter(aes(x = CRISPR_deletion_YorN,y=day_puptoecl),width = 0.05,height=0.1,shape=21, colour="black",fill="#C8C9CA") + labs (y= "days between pupating and eclosing", x = NULL)
p

t.test(alltogether2$day_puptoecl~alltogether2$CRISPR_deletion_YorN)
#p-value = 0.1258

