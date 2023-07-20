setwd("/Users/matteo/Desktop/allele_counts_newF1/")  #

library(dplyr)

#Example with P19_007 brood
#read ASEreader output tables
F1_90_toMP<-read.csv("90.to_MP.allele_counts.csv",sep="\t",header=TRUE) 
F1_152_toMP<-read.csv("152.to_MP.allele_counts.csv",sep="\t",header=TRUE) 
F1_200_toMP<-read.csv("200.to_MP.allele_counts.csv",sep="\t",header=TRUE) 
F1_90_toCP<-read.csv("90.toCP.allele_counts.csv",sep="\t",header=TRUE) 
F1_152_toCP<-read.csv("152.toCP.allele_counts.csv",sep="\t",header=TRUE) 
F1_200_toCP<-read.csv("200.toCP.allele_counts.csv",sep="\t",header=TRUE) 

#keep 1,2, 6, 7, 8 columns
F1_90_toMP<-F1_90_toMP[,c(1,2,6,7,8)]
F1_152_toMP<-F1_152_toMP[,c(1,2,6,7,8)]
F1_200_toMP<-F1_200_toMP[,c(1,2,6,7,8)]
F1_90_toCP<-F1_90_toCP[,c(1,2,6,7,8)]
F1_152_toCP<-F1_152_toCP[,c(1,2,6,7,8)]
F1_200_toCP<-F1_200_toCP[,c(1,2,6,7,8)]

colnames(F1_90_toMP)[1] <- "scaffold"
colnames(F1_152_toMP)[1] <- "scaffold"
colnames(F1_200_toMP)[1] <- "scaffold"
colnames(F1_90_toCP)[1] <- "scaffold"
colnames(F1_152_toCP)[1] <- "scaffold"
colnames(F1_200_toCP)[1] <- "scaffold"


#COMBINE SAMPLES
new<-full_join(F1_90_toMP,F1_152_toMP, by=c("position","scaffold"))  
new2<-full_join(new,F1_200_toMP, by=c("position","scaffold"))
new3<-full_join(F1_90_toCP,F1_152_toCP, by=c("position","scaffold"))
new4<-full_join(new3,F1_200_toCP, by=c("position","scaffold"))

#"to MP" = overlap with MP mother GATK so #Ref allele = CP  Alt allele = MP 
#'to CP" = overlap with CP father GATK #Ref allel = MP  Alt allele = CP

#so change names in to_MP so is the same as in to_CP
colnames(new2)[3] <- "altCount.x"
colnames(new2)[4] <- "refCount.x"

colnames(new2)[6] <- "altCount.y"
colnames(new2)[7] <- "refCount.y"

colnames(new2)[9] <- "altCount"
colnames(new2)[10] <- "refCount"

#merge based on column name
P19_007<-rbind(new4, new2)



##Example with P19_011 brood
setwd("/Users/matteo/Desktop/allele_counts_newF1/P19_011") 

F1_273_toMP<-read.csv("273.toMP.allele_counts.csv",sep="\t",header=TRUE) 
F1_292_toMP<-read.csv("292.toMP.allele_counts.csv",sep="\t",header=TRUE) 
F1_298_toMP<-read.csv("298.toMP.allele_counts.csv",sep="\t",header=TRUE) 
F1_273_toCP<-read.csv("273.toCP.allele_counts.csv",sep="\t",header=TRUE) 
F1_292_toCP<-read.csv("292.toCP.allele_counts.csv",sep="\t",header=TRUE) 
F1_298_toCP<-read.csv("298.toCP.allele_counts.csv",sep="\t",header=TRUE) 

F1_273_toMP<-F1_273_toMP[,c(1,2,6,7,8)]
F1_292_toMP<-F1_292_toMP[,c(1,2,6,7,8)]
F1_298_toMP<-F1_298_toMP[,c(1,2,6,7,8)]
F1_273_toCP<-F1_273_toCP[,c(1,2,6,7,8)]
F1_292_toCP<-F1_292_toCP[,c(1,2,6,7,8)]
F1_298_toCP<-F1_298_toCP[,c(1,2,6,7,8)]

colnames(F1_273_toMP)[1] <- "scaffold"
colnames(F1_292_toMP)[1] <- "scaffold"
colnames(F1_298_toMP)[1] <- "scaffold"
colnames(F1_273_toCP)[1] <- "scaffold"
colnames(F1_292_toCP)[1] <- "scaffold"
colnames(F1_298_toCP)[1] <- "scaffold"

#Combine samples
new<-full_join(F1_273_toMP,F1_292_toMP, by=c("position","scaffold"))  
new2<-full_join(new,F1_298_toMP, by=c("position","scaffold"))
new3<-full_join(F1_273_toCP,F1_292_toCP, by=c("position","scaffold"))
new4<-full_join(new3,F1_298_toCP, by=c("position","scaffold"))
colnames(new2)[3] <- "altCount.x"
colnames(new2)[4] <- "refCount.x"
colnames(new2)[6] <- "altCount.y"
colnames(new2)[7] <- "refCount.y"
colnames(new2)[9] <- "altCount"
colnames(new2)[10] <- "refCount"
P19_011<-rbind(new4, new2)


#merge data from the 2 broods
F1_MPCP<-full_join(P19_007,P19_011, by=c("position","scaffold"))
#write.table(F1_MPCP, file="ALLELE_counts_by_SNP_F1MPCP_new.txt", row.names = FALSE, quote=FALSE)  #add gene_id file first column



#ASSIGN EACH SNP to respective GENE
setwd("/Users/matteo/Desktop/") 
annotation<-read.table("gene_info.txt",header=TRUE)   
library(GenomicRanges)
GRgenes<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
colnames(F1_MPCP)[1] <- "scaffold"
colnames(F1_MPCP)[2] <- "start"
F1_MPCP$end = F1_MPCP$start
F1_MPCP<-F1_MPCP[,c(1,2,21,3:20)]
GRsnps<-makeGRangesFromDataFrame(F1_MPCP, seqnames.field=c("scaffold"))
olaps <- findOverlaps(GRgenes, GRsnps)
a<-cbind(annotation[queryHits(olaps),], F1_MPCP[subjectHits(olaps),])


#SUM up snps counts into one gene count
#replace NAs
a[is.na(a)] <- 0
F1_90_ref<-rowsum(a$refCount.x.x, a$gene_id)
F1_90_alt<-rowsum(a$altCount.x.x, a$gene_id)
F1_152_ref<-rowsum(a$refCount.y.x, a$gene_id)
F1_152_alt<-rowsum(a$altCount.y.x, a$gene_id)
F1_200_ref<-rowsum(a$refCount.x.x.x, a$gene_id)
F1_200_alt<-rowsum(a$altCount.x.x.x, a$gene_id)
F1_273_ref<-rowsum(a$refCount.x.y, a$gene_id)
F1_273_alt<-rowsum(a$altCount.x.y, a$gene_id)
F1_292_ref<-rowsum(a$refCount.y.y, a$gene_id)
F1_292_alt<-rowsum(a$altCount.y.y, a$gene_id)
F1_298_ref<-rowsum(a$refCount.y.y.y, a$gene_id)
F1_298_alt<-rowsum(a$altCount.y.y.y, a$gene_id)

matrix<-cbind(F1_90_ref,F1_90_alt,F1_152_ref,F1_152_alt,F1_200_ref,F1_200_alt,F1_273_ref,F1_273_alt,F1_292_ref,F1_292_alt,F1_298_ref,F1_298_alt)
table<-data.frame(matrix, rownames = TRUE)
table <- add_rownames(table, "gene_id")
colnames(table)[2] <- "90_refCount"
colnames(table)[3] <- "90_altCount"
colnames(table)[4] <- "152_refCount"
colnames(table)[5] <- "152_altCount"
colnames(table)[6] <- "200_refCount"
colnames(table)[7] <- "200_altCount"
colnames(table)[8] <- "273_refCount"
colnames(table)[9] <- "273_altCount"
colnames(table)[10] <- "292_refCount"
colnames(table)[11] <- "292_altCount"
colnames(table)[12] <- "298_refCount"
colnames(table)[13] <- "298_altCount"


#write.table(table, file="ALLELE_counts_by_GENE_F1MPCP_new.txt", row.names = FALSE, quote=FALSE)  #add gene_id file first column


#RUN ASE TEST
#DESEQ2 approach #model #~0+individual+allele (https://support.bioconductor.org/p/73239/)
library(DESeq2)
table2<-table[,c(1,2,4,6,8,10,12,3,5,7,9,11,13)]
rownames(table2) <- table$gene_id
table2$gene_id<-NULL
table2<- as.matrix(table2)
(individual <- factor(c(1,2,3,4,5,6,1,2,3,4,5,6)))
(allele <- factor(c(rep("mel", 6), rep("cydno", 6))))
(coldata <- data.frame(row.names=colnames(table2), individual,allele))
dds <- DESeqDataSetFromMatrix(countData=table2, colData=coldata, design=~0+individual+allele)
sizeFactors(dds) <- 1    #should not normalize between samples
dds <- DESeq(dds)
res <- results(dds)
rownames(res) <- table$gene_id 
write.table(res, file="ASE_F1MPCP_NEW_RESULTS.txt", row.names = TRUE, quote=FALSE)




