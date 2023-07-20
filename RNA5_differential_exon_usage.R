setwd("/Users/matteo/Desktop/")

library(DEXSeq)
library(DESeq2)
library(dplyr)


#read output files from DEXSeq
#Example with H. m. rosina and H. c. chioneus
MP <-read.table("merged_DEXseq_MP_new_exoncounts.txt",header=TRUE)
CP <-read.table("merged_DEXseq_CP_new_exoncounts.txt",header=TRUE)

all <- merge(MP,CP,by="exon_id")
#write.table(all, file="Brain_newpar_exoncounts.txt", row.names = FALSE, quote=FALSE)

#Differential exon usage
allAdult<-read.table("Brain_newpar_exoncounts.txt",header=TRUE,row.names = 1)
allAdult<-allAdult[,c(1:10)] 
(condition<- factor(c(rep("mel", 5), rep("cydno", 5))))
(coldata <- data.frame(row.names=colnames(allAdult), condition))
sample<-colnames(allAdult)
exon<-rownames(allAdult)
#
eid <- gsub(":", "", exon) #exons without :
gid <- gsub(":.*", "", exon) #genes
dxd2 <- DEXSeqDataSet(countData=allAdult,
                      sampleData=coldata,
                      ~ sample + exon + condition:exon,
                      featureID=eid,
                      groupID = gid)
#dispersion
dxd2 = estimateSizeFactors( dxd2 )
dxd2 = estimateDispersions( dxd2 ) 
#test
dxd2 = testForDEU( dxd2 ) 
dxd2 = estimateExonFoldChanges( dxd2, fitExpToVar="condition")
results = DEXSeqResults( dxd2)
#write.table(results, file="New_MPvsCP_DEXseq_results.txt", row.names = TRUE, quote=FALSE)


#read and modify table
resultbo<-read.delim("New_MPvsCP_DEXseq_results.txt",header=TRUE)
toDelete <- seq(1, nrow(resultbo), 2)
resultbo2<-resultbo[ toDelete ,]
#write.table(resultbo2, file="trial.txt", row.names = FALSE, quote=FALSE) 
#remove x from trial.txt
resultbo<-read.table("trial.txt",header=FALSE, sep=" ")
resultbo2<-resultbo[,c(2:11)]
write.table(resultbo2, file="New_MPvsCP_DEXseq_results2.txt", row.names = FALSE, quote=FALSE) 
#add header: gene_id exon_id exonBaseMean dispersion stat pvalue padj cydno mel log2fold_mel_cydno


#Check which exon diff. used at the QTL on chr 18
MPCP<-read.table("New_MPvsCP_DEXseq_results2.txt",header=TRUE)
MPCP<-MPCP[MPCP$padj < 0.05,] 
upmel<-MPCP[MPCP$log2fold_mel_cydno >1,] 
upcydno<-MPCP[MPCP$log2fold_mel_cydno< (-1),] 
all<-rbind(upmel,upcydno)
annotation<-read.table("gene_info.txt",header=TRUE) 
all <- inner_join(all,annotation,by="gene_id")
only18_2<-all[all$scaffold == "Hmel218002o",] #scaffold 2
only18_3<-all[all$scaffold =="Hmel218003o",] #scaffold 3 
onlypeak<-only18_3[only18_3$end <275070,] 
onlylodscore<-only18_3[only18_3$end <2393341,]



