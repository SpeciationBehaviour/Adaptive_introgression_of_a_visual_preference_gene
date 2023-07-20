setwd("/Users/matteo/Desktop/")

#source("https://bioconductor.org/biocLite.R")
#biocLite("Gviz")
#biocLite("DESeq2")
#install.packages('stringi')
library("Gviz")
library("DESeq2")
library(dplyr)
options(ucscChromosomeNames=FALSE)

#make genomic ranges #to later match genes physical position and fold-change in expression level
annotation<-read.table("chromo_gene_info.txt",header=TRUE) 
#in dds2 results ordered by gene name, so order gene ranges also by gene name
annotation <- annotation[order(annotation$gene_id),]
GR<-makeGRangesFromDataFrame(annotation, seqnames.field=c("scaffold"))
a <- AnnotationTrack(GR, name = "gene ranges") #create object that stores genomic coordinates for every gene

#KEEP ONLY GENES PLACED ON CHROMOSOMES
ALL<-read.table("Brains_newparam_genecounts.txt",header=TRUE)
ALL2<-right_join(ALL,annotation,by="gene_id")
ALL2<-ALL2[,c(0:45)] 
write.table(ALL2, file="Brains_newparam_genecounts2.txt", quote=FALSE,row.names=FALSE)

### CONDUCT DIFFERENTIAL GENE EXPRESSION ANALYSES and store values
#MP vs CP
ALL<-read.table("Brains_newparam_genecounts2.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(36:40,1:5)] 
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 5))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds3 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
rowRanges(dds3) <- GR #nb of rows in 'assay' (20097) must equal nb of rows in 'rowData' (19756)
dds3<- DESeq(dds3) 
resGR <- results(dds3, format = "GRanges") 
resGR$padj<--log10(resGR$padj) #transform p values adjusted in -log base10
d <- DataTrack(resGR, data = "padj", type = "p", name = "-log10(padj)", strand = "*") #store p-values and genomic ranges in Gvizobject

#MAPu vs CP
ALL<-read.table("Brains_newparam_genecounts2.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(36:40,6:10)] ########
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 5))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds3 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
dds3 <- DESeq(dds3) 
rowRanges(dds3) <- GR #nb of rows in 'assay' (20097) must equal nb of rows in 'rowData' (19756)
dds3 <- DESeq(dds3) 
resGR3 <- results(dds3, format = "GRanges")
resGR3$padj<--log10(resGR3$padj) 
d3 <- DataTrack(resGR3, data = "padj", type = "p", name = "-log10(padj)", strand = "*")

# MB vs CC
ALL<-read.table("Brains_newparam_genecounts2.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(41:44,11:15)] ########
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 4))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds4 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
dds4 <- DESeq(dds4) 
rowRanges(dds4) <- GR
dds4 <- DESeq(dds4)
resGR4 <- results(dds4, format = "GRanges")
resGR4$padj<--log10(resGR4$padj) #log10(0.05) #1.3
d4 <- DataTrack(resGR4, data = "padj", type = "p", name = "-log10(padj)", strand = "*")

## store values with associated graphical parameters
d <- DataTrack(resGR, data = "padj", type = "p", name = "-log10(padj)", strand = "*",background.title = "white",col.axis=1,col.title=1,col="black",baseline=1.3, col.baseline="black",ylim=c(0,30))
d3 <- DataTrack(resGR3, data = "padj", type = "p", name = "-log10(padj)", strand = "*",background.title = "white",col.axis=1,col.title=1,col="black",baseline=1.3, col.baseline="black",ylim=c(0,30))
d4 <- DataTrack(resGR4, data = "padj", type = "p", name = "-log10(padj)", strand = "*",background.title = "white",col.axis=1,col.title=1,col="black",baseline=1.3, col.baseline="black",ylim=c(0,30))

#Set active Chromosome and then withdraw p values
chromosome(d) <- 'chr18' 
chromosome(d3) <- 'chr18' 
chromosome(d4) <- 'chr18' 
p_raw_d_chr18<-values(d)
p_raw_d3_chr18<-values(d3)
p_raw_d4_chr18<-values(d4)

#Set safe range
write.table(d@range,"d.txt")

#Read in ranges and change all factor columns to character columns.
d_seq<-read.table("d.txt",header=T)
for(i in 1:length(d_seq[1,])){
  if(is.factor(d_seq[,i])){
    d_seq[,i]<-levels(d_seq[,i])[d_seq[,i]]
  }
}

#Repeat the same for other two
write.table(d3@range,"d3.txt")

d3_seq<-read.table("d.txt",header=T)
for(i in 1:length(d3_seq[1,])){
  if(is.factor(d3_seq[,i])){
    d3_seq[,i]<-levels(d3_seq[,i])[d3_seq[,i]]
  }
}

write.table(d4@range,"d4.txt")

d4_seq<-read.table("d.txt",header=T)
for(i in 1:length(d4_seq[1,])){
  if(is.factor(d4_seq[,i])){
    d4_seq[,i]<-levels(d4_seq[,i])[d4_seq[,i]]
  }
}

#Retrieve chromosome names
seqnames_d<-d_seq$seqnames
seqnames_d3<-d3_seq$seqnames
seqnames_d4<-d4_seq$seqnames

#Retrieve mean position of scaffold (mean of beginning and end of scaffold)
mean_pos_d<-(d_seq$start+d_seq$end)/2
mean_pos_d3<-(d3_seq$start+d4_seq$end)/2
mean_pos_d4<-(d4_seq$start+d3_seq$end)/2

#Extract those positions that belong to the two scaffolds you're interested in.
mean_pos_d_chr18<-mean_pos_d[seqnames_d=="chr18"]
mean_pos_d3_chr18<-mean_pos_d3[seqnames_d3=="chr18"]
mean_pos_d4_chr18<-mean_pos_d4[seqnames_d4=="chr18"]

#Fold changes
fold_d_chr18<-resGR$log2FoldChange[seqnames_d=="chr18"]
fold_d3_chr18<-resGR3$log2FoldChange[seqnames_d=="chr18"]
fold_d4_chr18<-resGR4$log2FoldChange[seqnames_d=="chr18"]

#Which positions are free of NA
no_NA_d_chr18<-sapply(1:length(fold_d_chr18),function(x) sum(is.na(p_raw_d_chr18[x]),is.na(mean_pos_d_chr18[x]),is.na(fold_d_chr18[x])))
no_NA_d3_chr18<-sapply(1:length(fold_d3_chr18),function(x) sum(is.na(p_raw_d3_chr18[x]),is.na(mean_pos_d3_chr18[x]),is.na(fold_d3_chr18[x])))
no_NA_d4_chr18<-sapply(1:length(fold_d4_chr18),function(x) sum(is.na(p_raw_d4_chr18[x]),is.na(mean_pos_d4_chr18[x]),is.na(fold_d4_chr18[x])))

#Color vectors
col_d_chr18_alt<-sapply((1:length(fold_d_chr18))[no_NA_d_chr18==0],function(x) c("gray89","#1F78B4","#FDBF6F")[c(p_raw_d_chr18[x]<=1.3|(fold_d_chr18[x]>=(-1)&fold_d_chr18[x]<=1),p_raw_d_chr18[x]>1.3&fold_d_chr18[x]<(-1),p_raw_d_chr18[x]>1.3&fold_d_chr18[x]>1)])
col_d3_chr18_alt<-sapply((1:length(fold_d3_chr18))[no_NA_d3_chr18==0],function(x) c("gray89","#1F78B4","#FDBF6F")[c(p_raw_d3_chr18[x]<=1.3|(fold_d3_chr18[x]>=(-1)&fold_d3_chr18[x]<=1),p_raw_d3_chr18[x]>1.3&fold_d3_chr18[x]<(-1),p_raw_d3_chr18[x]>1.3&fold_d3_chr18[x]>1)])
col_d4_chr18_alt<-sapply((1:length(fold_d4_chr18))[no_NA_d4_chr18==0],function(x) c("gray89","#1F78B4","#FDBF6F")[c(p_raw_d4_chr18[x]<=1.3|(fold_d4_chr18[x]>=(-1)&fold_d4_chr18[x]<=1),p_raw_d4_chr18[x]>1.3&fold_d4_chr18[x]<(-1),p_raw_d4_chr18[x]>1.3&fold_d4_chr18[x]>1)])



# MM vs CC
ALL<-read.table("Brains_newparam_genecounts2.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(41:44,16:20)] ########
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 4))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds3 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
rowRanges(dds3) <- GR
dds3  <- DESeq(dds3)
results<-results(dds3) 
results #fold changes reversed #now negative means more in WHO?? (change later)
resGR21 <- results(dds3, format = "GRanges")
resGR21$padj<--log10(resGR21$padj)
d21 <- DataTrack(resGR21, data = "padj", type = "p", name = "-log10(padj)", strand = "*",col=c("black"),background.title = "white",col.axis=1,col.title=1,ylim=c(0,25))


# TTC vs CC
ALL<-read.table("Brains_newparam_genecounts2.txt",header=TRUE, row.names = 1)
ALL<-ALL[,c(41:44,27:31)] ########
ALL<- as.matrix(ALL)
(condition3 <- factor(c(rep("red", 5), rep("white", 4))))
(coldata3 <- data.frame(row.names=colnames(ALL), condition3))
dds3 <- DESeqDataSetFromMatrix(countData=ALL, colData=coldata3, design=~condition3)
rowRanges(dds3) <- GR
dds3 <- DESeq(dds3) 
resGR9 <- results(dds3, format = "GRanges")
resGR9$padj<--log10(resGR9$padj)
d9 <- DataTrack(resGR9, data = "padj", type = "p", name = "-log10(padj)", strand = "*",col=c("black"),background.title = "white",col.axis=1,col.title=1,ylim=c(0,25))


#Set active scaffolds and then withdraw p values, repeat for next scaffold
chromosome(d21) <- 'chr18' 
chromosome(d9) <- 'chr18'
p_raw_d21_chr18<-values(d21)
p_raw_d9_chr18<-values(d9)


#SET RANGE
write.table(d21@range,"d21.txt")
#Read in ranges and change all factor columns to character columns.
d21_seq<-read.table("d21.txt",header=T)
for(i in 1:length(d21_seq[1,])){
  if(is.factor(d21_seq[,i])){
    d21_seq[,i]<-levels(d21_seq[,i])[d21_seq[,i]]
  }
}
#
write.table(d9@range,"d9.txt")
d9_seq<-read.table("d9.txt",header=T)
for(i in 1:length(d9_seq[1,])){
  if(is.factor(d9_seq[,i])){
    d9_seq[,i]<-levels(d9_seq[,i])[d9_seq[,i]]
  }
}


#Retrieve chromosome names
seqnames_d21<-d21_seq$seqnames
seqnames_d9<-d9_seq$seqnames

#Retrieve mean position of scaffold (mean of beginning and end of scaffold)
mean_pos_d21<-(d21_seq$start+d21_seq$end)/2
mean_pos_d9<-(d9_seq$start+d9_seq$end)/2

#Extract those positions that belong to the two scaffolds you're interested in.
mean_pos_d21_chr18<-mean_pos_d21[seqnames_d21=="chr18"]
mean_pos_d9_chr18<-mean_pos_d9[seqnames_d9=="chr18"]


#Fold change
fold_d21_chr18<-resGR21$log2FoldChange[seqnames_d=="chr18"]
fold_d9_chr18<-resGR9$log2FoldChange[seqnames_d=="chr18"]


#Which positions are free of NA
no_NA_d21_chr18<-sapply(1:length(fold_d21_chr18),function(x) sum(is.na(p_raw_d21_chr18[x]),is.na(mean_pos_d21_chr18[x]),is.na(fold_d21_chr18[x])))
no_NA_d9_chr18<-sapply(1:length(fold_d9_chr18),function(x) sum(is.na(p_raw_d9_chr18[x]),is.na(mean_pos_d9_chr18[x]),is.na(fold_d9_chr18[x])))

#Color vectors
col_d21_chr18_alt<-sapply((1:length(fold_d21_chr18))[no_NA_d21_chr18==0],function(x) c("gray89","#1F78B4","#FDBF6F")[c(p_raw_d21_chr18[x]<=1.3|(fold_d21_chr18[x]>=(-1)&fold_d21_chr18[x]<=1),p_raw_d21_chr18[x]>1.3&fold_d21_chr18[x]<(-1),p_raw_d21_chr18[x]>1.3&fold_d21_chr18[x]>1)])
col_d9_chr18_alt<-sapply((1:length(fold_d9_chr18))[no_NA_d9_chr18==0],function(x) c("gray89","#1F78B4","#FDBF6F")[c(p_raw_d9_chr18[x]<=1.3|(fold_d9_chr18[x]>=(-1)&fold_d9_chr18[x]<=1),p_raw_d9_chr18[x]>1.3&fold_d9_chr18[x]<(-1),p_raw_d9_chr18[x]>1.3&fold_d9_chr18[x]>1)])

###EFFECT SIZES OVER CHROMOSOME
#Set xlimits
xlims<-c(0,2750000)

#Set ylimits (with maximum y being the rounded up maximum value of all 2*3 plots)
ylims<-c(min(fold_d_chr18[no_NA_d_chr18==0],
             fold_d3_chr18[no_NA_d3_chr18==0],
             fold_d4_chr18[no_NA_d4_chr18==0],
             fold_d21_chr18[no_NA_d21_chr18==0],
             fold_d9_chr18[no_NA_d9_chr18==0])
         ,max(fold_d_chr18[no_NA_d_chr18==0],
              fold_d3_chr18[no_NA_d3_chr18==0],
              fold_d4_chr18[no_NA_d4_chr18==0],
              fold_d21_chr18[no_NA_d21_chr18==0],
              fold_d9_chr18[no_NA_d9_chr18==0]))


#open pdf where graph will be stored                                
pdf("chr18_diff_expression_species.pdf")
#Layout to get multiple plots
layout(matrix(1:5,ncol=1))
#spacing around one plot
par(mar=c(1,5,0,0))
#spacing around all three plots
par(oma=c(0,0,1,0.7))
#Create empty plot.
#Give some space on top, on bottom and on left side so that points don't get cut off
plot(1,1,
     xlim=c(xlims[1]-0.01*(abs(xlims[1]-xlims[2])),2750000),
     ylim=c(ylims[1]-0.02*(abs(ylims[1]-ylims[2])),
            ylims[2]+0.01*(abs(ylims[1]-ylims[2]))),
     type="n",xlab="",ylab="",xaxt="none",yaxt="none",axes=F,xaxs="i",yaxs="i",col.axis="gray39")
#Add threshold line
segments(c(0,0,0),c(-1,1,0),c(2750000,2750000,2750000),c(-1,1,0),lty=c("dotted","dotted","solid"),col=c("gray39","gray39","gray39"))
#Add points and color if bigger than 1.3 (logarithm in base ten of the p value adjusted)
points(mean_pos_d_chr18[no_NA_d_chr18==0][col_d_chr18_alt=="black"],fold_d_chr18[no_NA_d_chr18==0][col_d_chr18_alt=="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d_chr18_alt[col_d_chr18_alt=="black"],0.7))
points(mean_pos_d_chr18[no_NA_d_chr18==0][col_d_chr18_alt!="black"],fold_d_chr18[no_NA_d_chr18==0][col_d_chr18_alt!="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d_chr18_alt[col_d_chr18_alt!="black"],0.7))

#Add y axis
axis(2,line=0.2,las=1,lwd=1.5,font=2,col.axis="gray39",col="gray39")
axis(2,line=0.2,lwd=1.5,at=ylims,tck=0,labels=F,col.axis="gray39",col="gray39")

#Repeat for d3 and d4
plot(1,1,
     xlim=c(xlims[1]-0.01*(abs(xlims[1]-xlims[2])),2750000),
     ylim=c(ylims[1]-0.02*(abs(ylims[1]-ylims[2])),
            ylims[2]+0.01*(abs(ylims[1]-ylims[2]))),
     type="n",xlab="",ylab="",xaxt="none",yaxt="none",axes=F,xaxs="i",yaxs="i",col.axis="gray39")
segments(c(0,0,0),c(-1,1,0),c(2750000,2750000,2750000),c(-1,1,0),lty=c("dotted","dotted","solid"),col=c("gray39","gray39","gray39"))
points(mean_pos_d3_chr18[no_NA_d3_chr18==0][col_d3_chr18_alt=="black"],fold_d3_chr18[no_NA_d3_chr18==0][col_d3_chr18_alt=="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d3_chr18_alt[col_d3_chr18_alt=="black"],0.7))
points(mean_pos_d3_chr18[no_NA_d3_chr18==0][col_d3_chr18_alt!="black"],fold_d3_chr18[no_NA_d3_chr18==0][col_d3_chr18_alt!="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d3_chr18_alt[col_d3_chr18_alt!="black"],0.7))
axis(2,line=0.2,las=1,lwd=1.5,font=2,col.axis="gray39",col="gray39")
axis(2,line=0.2,lwd=1.5,at=ylims,tck=0,labels=F,col.axis="gray39",col="gray39")

plot(1,1,
     xlim=c(xlims[1]-0.01*(abs(xlims[1]-xlims[2])),2750000),
     ylim=c(ylims[1]-0.02*(abs(ylims[1]-ylims[2])),
            ylims[2]+0.01*(abs(ylims[1]-ylims[2]))),
     type="n",xlab="",ylab="",xaxt="none",yaxt="none",axes=F,xaxs="i",yaxs="i",col.axis="gray39")
segments(c(0,0,0),c(-1,1,0),c(2750000,2750000,2750000),c(-1,1,0),lty=c("dotted","dotted","solid"),col=c("gray39","gray39","gray39"))
points(mean_pos_d4_chr18[no_NA_d4_chr18==0][col_d4_chr18_alt=="black"],fold_d4_chr18[no_NA_d4_chr18==0][col_d4_chr18_alt=="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d4_chr18_alt[col_d4_chr18_alt=="black"],0.7))
points(mean_pos_d4_chr18[no_NA_d4_chr18==0][col_d4_chr18_alt!="black"],fold_d4_chr18[no_NA_d4_chr18==0][col_d4_chr18_alt!="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d4_chr18_alt[col_d4_chr18_alt!="black"],0.7))
axis(2,line=0.2,las=1,lwd=1.5,font=2,col.axis="gray39",col="gray39")
axis(2,line=0.2,lwd=1.5,at=ylims,tck=0,labels=F,col.axis="gray39",col="gray39")

#Repeat for d21 and d9
plot(1,1,
     xlim=c(xlims[1]-0.01*(abs(xlims[1]-xlims[2])),2750000),
     ylim=c(ylims[1]-0.02*(abs(ylims[1]-ylims[2])),
            ylims[2]+0.01*(abs(ylims[1]-ylims[2]))),
     type="n",xlab="",ylab="",xaxt="none",yaxt="none",axes=F,xaxs="i",yaxs="i",col.axis="gray39")
segments(c(0,0,0),c(-1,1,0),c(2750000,2750000,2750000),c(-1,1,0),lty=c("dotted","dotted","solid"),col=c("gray39","gray39","gray39"))
points(mean_pos_d21_chr18[no_NA_d21_chr18==0][col_d21_chr18_alt=="black"],fold_d21_chr18[no_NA_d21_chr18==0][col_d21_chr18_alt=="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d21_chr18_alt[col_d21_chr18_alt=="black"],0.7))
points(mean_pos_d21_chr18[no_NA_d21_chr18==0][col_d21_chr18_alt!="black"],fold_d21_chr18[no_NA_d21_chr18==0][col_d21_chr18_alt!="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d21_chr18_alt[col_d21_chr18_alt!="black"],0.7))
axis(2,line=0.2,las=1,lwd=1.5,font=2,col.axis="gray39",col="gray39")
axis(2,line=0.2,lwd=1.5,at=ylims,tck=0,labels=F,col.axis="gray39",col="gray39")

plot(1,1,
     xlim=c(xlims[1]-0.01*(abs(xlims[1]-xlims[2])),2750000),
     ylim=c(ylims[1]-0.02*(abs(ylims[1]-ylims[2])),
            ylims[2]+0.01*(abs(ylims[1]-ylims[2]))),
     type="n",xlab="",ylab="",xaxt="none",yaxt="none",axes=F,xaxs="i",yaxs="i")
segments(c(0,0,0),c(-1,1,0),c(2750000,2750000,2750000),c(-1,1,0),lty=c("dotted","dotted","solid"),col=c("gray39","gray39","gray39"))
points(mean_pos_d9_chr18[no_NA_d9_chr18==0][col_d9_chr18_alt=="black"],fold_d9_chr18[no_NA_d9_chr18==0][col_d9_chr18_alt=="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d9_chr18_alt[col_d9_chr18_alt=="black"],0.7))
points(mean_pos_d9_chr18[no_NA_d9_chr18==0][col_d9_chr18_alt!="black"],fold_d9_chr18[no_NA_d9_chr18==0][col_d9_chr18_alt!="black"],
       pch=21,lwd=0.5,cex=1.5,bg=adjustcolor(col_d9_chr18_alt[col_d9_chr18_alt!="black"],0.7))
axis(2,line=0.2,las=1,lwd=1.5,font=2,col.axis="gray39",col="gray39")
axis(2,line=0.2,lwd=1.5,at=ylims,tck=0,labels=F,col.axis="gray39",col="gray39")



#Give only one y axis title
mtext("Fold Change",2,font=2,cex=1.2,line=(-1.9),outer=T)

dev.off()