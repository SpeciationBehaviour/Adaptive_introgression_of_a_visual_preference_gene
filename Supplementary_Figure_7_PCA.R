setwd("/Users/matteo/Desktop/")

library(DESeq2)
library(dplyr)
library(gplots) 
library(ggplot2)
library(ggfortify)

#read gene annotation
annotation<-read.table("chromo_info.txt",header=TRUE) 


#PCA plot
AdultstoMP<-read.table("Brains_newparam_genecounts.txt",header=TRUE, row.names = 1)
AdultstoMP<-AdultstoMP[,c(1:20,27:31,36:44)] #remove hybrids 
(conditionAdult <- factor(c(rep("H. m. rosina", 5), rep("H. m. amaryllis", 5),rep("H. m. bellula", 5),rep("H. m. melpomene", 5),rep("H. t. tristero", 5),rep("H. c. chioneus", 5),rep("H. c. cydno", 4))))
(coldataAdult <- data.frame(row.names=colnames(AdultstoMP), conditionAdult))
ddsAdult<- DESeqDataSetFromMatrix(countData=AdultstoMP, colData=coldataAdult, design=~conditionAdult)
transformedAdult<- rlog(ddsAdult) #rlog transformation (normalize counts for library size, and log transform)
#plotPCA(transformedAdult, intgroup="conditionAdult") #uses only first 500 most variable genes for PCA
#PLOT WITHOUT GRID
myplot = plotPCA(transformedAdult, intgroup="conditionAdult",ntop=500)
myplot + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background = element_blank(), axis.line =element_line(colour = "gray39"),axis.line.x.top =element_line(colour = "gray39")) + scale_color_manual(values = c("#1F78B4","#1F78B4","#FF7F00","#FF7F00","#FF7F00","#FF7F00","#FDBF6F"))
