setwd("/Users/matteo/Desktop/")

#BiocManager::install("Gviz")
library("Gviz")
options(ucscChromosomeNames=FALSE)

#make gene annotation/ranges melpomene
annotation<-read.table("chromo_gene_info.txt",header=TRUE) 
annotation <- annotation[order(annotation$gene_id),]
GR<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
a <- AnnotationTrack(GR, name = "gene ranges")

#LOAD DATA

#ADMXITURE PROPORTIONS - H. t. tristero - H. m. bellula
admixture6<-read.csv("fd_TRI.BEL_AUTOSOMES.20000_300.csv",header=TRUE)
GR6<-makeGRangesFromDataFrame(admixture6, seqnames.field=c("scaffold")) #add genomic ranges
Fd6<-as.matrix(admixture6[,c(10)])
Fd6<-data.frame(Fd6)
Fd6$Fd[Fd6$Fd < 0] <- 0   #trasform negative Fd values to zero
values(GR6) <- DataFrame(Fd6$Fd)
fd_tri_bel<- DataTrack(GR6, data = "Fd6.Fd", strand = "*",type = c("a"),lwd=1.8,col="gray18",background.title = "white",col.axis=1,ylim=c(-0.01,1.001),cex.axis=0.5)

#FST H. t. tristero - H. c. cydno
poptri_cyd<-read.csv("fst_dxy.tristero_ccydno_m2000ALL.ALLCHR.csv.gz",header=TRUE) 
#add genomic ranges
GR11<-makeGRangesFromDataFrame(poptri_cyd, seqnames.field=c("scaffold"))
#read Fst
Fst<-as.matrix(poptri_cyd[,c(9)])
Fst<-data.frame(Fst)
Fst$Fst[Fst$Fst < 0] <- 0   #trasform negative Fd values to zero
values(GR11) <- DataFrame(Fst$Fst)
#fst_tricyd<- DataTrack(GR11, data = "Fst.Fst", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-0.1,0.9),cex.axis=0.5)
fst_tricyd<- DataTrack(GR11, data = "Fst.Fst", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-0.01,1.01),cex.axis=0.5)

#DXY H. t. tristero - H. c. cydno
dxy<-as.matrix(poptri_cyd[,c(8)])
dxy<-data.frame(dxy)
values(GR11) <- DataFrame(dxy$dxy)
#ddxy_tricyd<- DataTrack(GR11, data = "dxy.dxy", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(0,0.06),cex.axis=0.5)
ddxy_tricyd<- DataTrack(GR11, data = "dxy.dxy", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(0,0.0601),cex.axis=0.5)

#CLR/sweep support - H. timareta
sweep_tristero<-read.table("tim.tri.pop1_chr1.sweepfinder.out",header=TRUE) 
sweep_tristero$scaffold<-"chr1"
sweep_tristero$end<-sweep_tristero$location
colnames(sweep_tristero)[1] <- "start"
sweep_tristero<-sweep_tristero[,c(4,1,5,2,3)]
#add genomic ranges
GR10<-makeGRangesFromDataFrame(sweep_tristero, seqnames.field=c("scaffold"))
Fd10<-as.matrix(sweep_tristero[,c(4)])
Fd10<-data.frame(Fd10)
values(GR10) <- DataFrame(Fd10$Fd)
sweepTRI <- DataTrack(GR10, data = "Fd10.Fd", strand = "*",type = c("a"),lwd=1.5,col="gray18",background.title = "white",col.axis=1,ylim=c(-10,1001),cex.axis=0.5)


#RECOMBINATION RATE
recombrate<-read.csv("crossover_rec_rates_Davey2017.tsv",sep=" ",header=TRUE) #use cM/Mb
recombrate<-recombrate[recombrate$chrom=="chr1",]
GR7<-makeGRangesFromDataFrame(recombrate, seqnames.field=c("chrom"))
recomb<-as.matrix(recombrate[,c(4)])
recomb<-data.frame(recomb)
values(GR7) <- DataFrame(recomb$recomb)
#recomb_rates<- DataTrack(GR7, data = "recomb.recomb", strand = "*",type = c("p"),lwd=1.5,col="brown1",background.title = "white",col.axis=1,cex.axis=0.5)
recomb_rates<- DataTrack(GR7, data = "recomb.recomb", strand = "*",type = c("a"),lwd=1.5,col="#A6CEE3",background.title = "white",col.axis=1,ylim=c(0,4), cex.axis=0.5)


#PLOT DIFFERNT ESTIMATES ACROSS QTL CONFIDENCE INTERVAL
#QTL peak
#chr1	1417196	qtl_1_start #chr1	1596981	qtl_1_end
# QTL confidence region
#chr1	762295	qtl_1_int_start chr1 2678880	qtl_1_int_end

#png('base_popgen.png')
plotTracks(list(recomb_rates,sweepTRI,fst_tricyd,ddxy_tricyd), chromosome = "chr1", col.axis="gray39","chr1", from = 762295,to = 2678880,bg = "transparent")  
plotTracks(list(fd_tri_bel,sweepTRI,fst_tricyd,ddxy_tricyd), add=TRUE,chromosome = "chr1", col.axis="gray39","chr1", from = 762295,to = 2678880,bg = "transparent")  
#dev.off()plotTracks(list(recomb_rates,twisst1,sweepTHX,fst_tricyd,ddxy_tricyd), chromosome = "chr18", col.axis="gray39",from = 0,to = 2750000,bg = "transparent") 






