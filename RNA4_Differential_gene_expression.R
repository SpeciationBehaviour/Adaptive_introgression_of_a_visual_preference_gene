setwd("/Users/matteo/Desktop/")

library(DESeq2)
library(dplyr)

#Read annotation with gene IDs and chromosomal coordinates
annotation<-read.table("gene_info.txt",header=TRUE) 

#Read and put together htseq files
#below example with H. m .rosina and H. c. chioneus
MP <-read.table("merged_htseq_MP_new_genecounts.txt",header=TRUE)  #5
CP <-read.table("merged_htseq_CP_new_genecounts.txt",header=TRUE) #5
all <- merge(MP,CP,by="gene_id")
write.table(all, file="Brains_newparam_genecounts.txt", row.names = FALSE, quote=FALSE)

#Differential expression analysis
ALL<-read.table("Brains_newparam_genecounts.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(1:5,6:10)] #to change columns based on species of interest
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 5))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds3 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
dds3 <- DESeq(dds3) 
res <- results(dds3)
resSig <- subset(res, padj < 0.05) 
#write.table(resSig, file="MPCP_species.txt", row.names = TRUE, quote=FALSE)  #add gene_id file first column
diff<-read.table("MPCP_species.txt",header=TRUE)
upcydno<-diff[diff$log2FoldChange >1,] 
upmel<-diff[diff$log2FoldChange< (-1),]
all<-rbind(upmel,upcydno)
all <- merge(all,annotation,by="gene_id")
# - is up in melpomene 

#See which DE genes within QTL confidence region on chromosome 18
only18_1<-all[all$scaffold == "Hmel218001o",] #first scaffold #or use chromosomal assembly directly
only18_1<-only18_1[only18_1$start >8997,].
only18_2<-all[all$scaffold == "Hmel218002o",] #second scaffold 
only18_3<-all[all$scaffold =="Hmel218003o",]  #third scaffold
onlypeak<-only18_3[only18_3$end <275070,]
onlylodscore<-only18_3[only18_3$end <2393341,]













