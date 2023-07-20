setwd("/Users/matteo/Desktop/")

library("Gviz")
options(ucscChromosomeNames=FALSE)

#read H. melpomene gene annotation and estimare respective gene ranges
annotation<-read.table("chromo_gene_info.txt",header=TRUE) 
annotation <- annotation[order(annotation$gene_id),]
GR<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
a <- AnnotationTrack(GR, name = "gene ranges")


#read CLR data for chromosome 18 - H. t. tristero
#note that object name says "sweep_thelxinoe" (but reading data for H. t. tristero) 
sweep_thelxinoe<-read.table("tim.tri.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfttri <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)


#to overlay 1% quantile sweep #read data from all chromosomes (no Z)
sweep_thelxinoe1<-read.table("tim.tri.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("tim.tri.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("tim.tri.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("tim.tri.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("tim.tri.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("tim.tri.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("tim.tri.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("tim.tri.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("tim.tri.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("tim.tri.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("tim.tri.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("tim.tri.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("tim.tri.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("tim.tri.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("tim.tri.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("tim.tri.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("tim.tri.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("tim.tri.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("tim.tri.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("tim.tri.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 565.93 ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepTRI1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#FDBF6F",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)



#H. t. thelxinoe
sweep_thelxinoe<-read.table("thelxinoe.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfthelxinoelast <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)

#overlay 1% quantile 
sweep_thelxinoe1<-read.table("thelxinoe.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("thelxinoe.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("thelxinoe.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("thelxinoe.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("thelxinoe.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("thelxinoe.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("thelxinoe.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("thelxinoe.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("thelxinoe.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("thelxinoe.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("thelxinoe.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("thelxinoe.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("thelxinoe.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("thelxinoe.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("thelxinoe.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("thelxinoe.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("thelxinoe.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("thelxinoe.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("thelxinoe.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("thelxinoe.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 654.7835 ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepTHX1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#FDBF6F",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)


#H. m. amaryllis
sweep_thelxinoe<-read.table("amaryllis.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfama <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)


sweep_thelxinoe1<-read.table("amaryllis.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("amaryllis.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("amaryllis.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("amaryllis.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("amaryllis.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("amaryllis.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("amaryllis.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("amaryllis.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("amaryllis.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("amaryllis.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("amaryllis.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("amaryllis.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("amaryllis.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("amaryllis.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("amaryllis.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("amaryllis.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("amaryllis.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("amaryllis.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("amaryllis.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("amaryllis.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 286.0101  ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepAMA1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#FF7F00",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)



#H. m. bellula
sweep_thelxinoe<-read.table("mel.bel.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfbel<- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)

sweep_thelxinoe1<-read.table("mel.bel.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("mel.bel.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("mel.bel.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("mel.bel.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("mel.bel.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("mel.bel.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("mel.bel.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("mel.bel.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("mel.bel.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("mel.bel.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("mel.bel.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("mel.bel.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("mel.bel.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("mel.bel.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("mel.bel.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("mel.bel.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("mel.bel.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("mel.bel.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("mel.bel.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("mel.bel.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 188.007   ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepBEL1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#FF7F00",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)


#H. m rosina
sweep_thelxinoe<-read.table("rosina.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfros<- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)

sweep_thelxinoe1<-read.table("rosina.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("rosina.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("rosina.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("rosina.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("rosina.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("rosina.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("rosina.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("rosina.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("rosina.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("rosina.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("rosina.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("rosina.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("rosina.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("rosina.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("rosina.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("rosina.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("rosina.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("rosina.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("rosina.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("rosina.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 261.6199    ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepROS1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#FF7F00",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)



#H. c. chioneus
sweep_thelxinoe<-read.table("chioneus.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfchioneus<- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)

sweep_thelxinoe1<-read.table("chioneus.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("chioneus.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("chioneus.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("chioneus.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("chioneus.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("chioneus.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("chioneus.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("chioneus.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("chioneus.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("chioneus.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("chioneus.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("chioneus.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("chioneus.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("chioneus.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("chioneus.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("chioneus.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("chioneus.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("chioneus.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("chioneus.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("chioneus.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 47.60508     ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepCHI1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#1F78B4",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)



#H. c. cydno
sweep_thelxinoe<-read.table("cyd.cyd.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe$scaffold<-"chr18"
sweep_thelxinoe$end<-sweep_thelxinoe$location
colnames(sweep_thelxinoe)[1] <- "start"
sweep_thelxinoe<<-sweep_thelxinoe[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_thelxinoe, seqnames.field=c("scaffold"))
#read likelihood values
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
dfcyd<- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)

sweep_thelxinoe1<-read.table("cyd.cyd.pop1_chr1.sweepfinder.out",header=TRUE)
sweep_thelxinoe2<-read.table("cyd.cyd.pop1_chr2.sweepfinder.out",header=TRUE)
sweep_thelxinoe3<-read.table("cyd.cyd.pop1_chr3.sweepfinder.out",header=TRUE)
sweep_thelxinoe4<-read.table("cyd.cyd.pop1_chr4.sweepfinder.out",header=TRUE)
sweep_thelxinoe5<-read.table("cyd.cyd.pop1_chr5.sweepfinder.out",header=TRUE)
sweep_thelxinoe6<-read.table("cyd.cyd.pop1_chr6.sweepfinder.out",header=TRUE)
sweep_thelxinoe7<-read.table("cyd.cyd.pop1_chr7.sweepfinder.out",header=TRUE)
sweep_thelxinoe8<-read.table("cyd.cyd.pop1_chr8.sweepfinder.out",header=TRUE)
sweep_thelxinoe9<-read.table("cyd.cyd.pop1_chr9.sweepfinder.out",header=TRUE)
sweep_thelxinoe10<-read.table("cyd.cyd.pop1_chr10.sweepfinder.out",header=TRUE)
sweep_thelxinoe11<-read.table("cyd.cyd.pop1_chr11.sweepfinder.out",header=TRUE)
sweep_thelxinoe12<-read.table("cyd.cyd.pop1_chr12.sweepfinder.out",header=TRUE)
sweep_thelxinoe13<-read.table("cyd.cyd.pop1_chr13.sweepfinder.out",header=TRUE)
sweep_thelxinoe14<-read.table("cyd.cyd.pop1_chr14.sweepfinder.out",header=TRUE)
sweep_thelxinoe15<-read.table("cyd.cyd.pop1_chr15.sweepfinder.out",header=TRUE)
sweep_thelxinoe16<-read.table("cyd.cyd.pop1_chr16.sweepfinder.out",header=TRUE)
sweep_thelxinoe17<-read.table("cyd.cyd.pop1_chr17.sweepfinder.out",header=TRUE)
sweep_thelxinoe18<-read.table("cyd.cyd.pop1_chr18.sweepfinder.out",header=TRUE)
sweep_thelxinoe19<-read.table("cyd.cyd.pop1_chr19.sweepfinder.out",header=TRUE)
sweep_thelxinoe20<-read.table("cyd.cyd.pop1_chr20.sweepfinder.out",header=TRUE)
sweepthelxinoall<-rbind(sweep_thelxinoe1,sweep_thelxinoe2,sweep_thelxinoe3,
                        sweep_thelxinoe4,sweep_thelxinoe5,sweep_thelxinoe6,
                        sweep_thelxinoe7,sweep_thelxinoe8,sweep_thelxinoe9,
                        sweep_thelxinoe10,sweep_thelxinoe11,sweep_thelxinoe12,
                        sweep_thelxinoe13,sweep_thelxinoe14,sweep_thelxinoe15,
                        sweep_thelxinoe16,sweep_thelxinoe17,sweep_thelxinoe18,
                        sweep_thelxinoe19,sweep_thelxinoe20)
quantile(sweepthelxinoall$LR, probs = c(0.01, 0.99))
#
Fd10<-as.matrix(sweep_thelxinoe[,c(4)])
Fd10<-data.frame(Fd10)
Fd10$Fd[Fd10$Fd < 22.42196      ] <- "NA"
values(GR10) <- DataFrame(Fd10$Fd)
dfsweepCYD1percent <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="#1F78B4",background.title = "white",col.axis=1,ylim=c(-10,1250),cex.axis=0.5)


#PLOT FIGURE
#QTL on chromosome 18
plotTracks(list(dfttri,dfthelxinoelast,dfbel,dfama,dfros,dfchioneus,dfcyd), chromosome = "chr18", col.axis="gray39",from = 0,to = 2750000,bg = "transparent")
plotTracks(list(dfsweepTRI1percent,dfsweepTHX1percent,dfsweepBEL1percent,dfsweepAMA1percent,dfsweepROS1percent,dfsweepCHI1percent,dfsweepCYD1percent), add=TRUE,chromosome = "chr18", col.axis="gray39",from = 0,to = 2750000)

#Zoom in
annotation<-read.table("chromo_gene_info.txt",header=TRUE) 
annotation <- annotation[order(annotation$gene_id),]
GR<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
a <- AnnotationTrack(GR, name = "gene ranges")
a <- AnnotationTrack(GR, name = "gene ranges",col="black",fill="gray",col.axis="gray39",shape="arrow",bg = "transparent")
plotTracks(list(dfttri,dfthelxinoelast,dfbel,dfama,dfros,dfchioneus,dfcyd,a), chromosome = "chr18", col.axis="gray39",from = 440000,to = 520000,bg = "transparent",min.width = 0.0001)
plotTracks(list(dfsweepTRI1percent,dfsweepTHX1percent,dfsweepBEL1percent,dfsweepAMA1percent,dfsweepROS1percent,dfsweepCHI1percent,dfsweepCYD1percent,a), add=TRUE,chromosome = "chr18", col.axis="gray39",from = 440000,to = 520000,min.width = 0.0001)

