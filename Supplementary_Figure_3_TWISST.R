setwd("/Users/matteo/Desktop/")

library("Gviz")
library(dplyr)
options(ucscChromosomeNames=FALSE)

#make genomic ranges for genes in the H. melpomene genome
annotation<-read.table("gene_info.txt",header=TRUE) 
#in dds2 results ordered by gene name, so order here also by gene name
annotation <- annotation[order(annotation$gene_id),]
GR<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
a <- AnnotationTrack(GR, name = "gene ranges")

#Read twisst data
#N character transformed to -
twisst1<-read.csv("Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.data.tsv",sep="\t",header=TRUE) 
twisst2<-read.csv("Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.weights.tsv",sep="\t",header=TRUE) 
twisst <- cbind(twisst1,twisst2)
twisst3<-read.csv("Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.data.tsv",sep="\t",header=TRUE) #13557 observations (with NAs)
twisst4<-read.csv("Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.weights.tsv",sep="\t",header=TRUE) #13557 observations (with NAs)
twisst2 <- cbind(twisst3,twisst4)

#topo 3 = species tree
GR2<-makeGRangesFromDataFrame(twisst, seqnames.field=c("scaffold"))
Fd<-as.matrix(twisst[,c(9)])
Fd<-data.frame(Fd)
values(GR2) <- DataFrame(Fd$Fd)
topo3A <- DataTrack(GR2, data = "Fd.Fd", strand = "*",type = c("h"),lwd=2,col="#1F78B4",background.title = "white",col.axis=1,cex.axis=0.5)

#topo 12 = introgression tree
GR2<-makeGRangesFromDataFrame(twisst, seqnames.field=c("scaffold"))
Fd<-as.matrix(twisst[,c(18)])
Fd<-data.frame(Fd)
values(GR2) <- DataFrame(Fd$Fd)
topo12A <- DataTrack(GR2, data = "Fd.Fd", strand = "*",type = c("h"),lwd=2,col="#FDBF6F",background.title = "white",col.axis=1,cex.axis=0.5)

#topo 3 = species tree
GR2<-makeGRangesFromDataFrame(twisst2, seqnames.field=c("scaffold"))
Fd<-as.matrix(twisst2[,c(9)])
Fd<-data.frame(Fd)
values(GR2) <- DataFrame(Fd$Fd)
topo3B <- DataTrack(GR2, data = "Fd.Fd", strand = "*",type = c("h"),lwd=2,col="#1F78B4",background.title = "white",col.axis=1,cex.axis=0.5)

#topo 12 = introgression tree
GR2<-makeGRangesFromDataFrame(twisst2, seqnames.field=c("scaffold"))
Fd<-as.matrix(twisst2[,c(18)])
Fd<-data.frame(Fd)
values(GR2) <- DataFrame(Fd$Fd)
topo12B <- DataTrack(GR2, data = "Fd.Fd", strand = "*",type = c("h"),lwd=2,col="#FDBF6F",background.title = "white",col.axis=1,cex.axis=0.5)


plotTracks(list(topo3A,topo12A,topo3B,topo12B), chromosome = "chr18", from = 0,to = 2746316) #interval
#plotTracks(list(topo12A,topo12B), add=TRUE, chromosome = "chr18", from = 0,to = 2746316) #interval
#plotTracks(list(topo3A,topo3B), chromosome = "chr18", col.axis="gray39",from = 0,to = 2750000,bg = "transparent") #interval
#plotTracks(list(topo12A,topo12B), add=TRUE, chromosome = "chr18", col.axis="gray39",from = 0,to = 2750000,bg = "transparent") #interval


