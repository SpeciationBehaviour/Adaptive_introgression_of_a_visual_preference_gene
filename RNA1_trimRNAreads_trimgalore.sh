{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red26\green26\blue26;\red27\green31\blue34;\red38\green38\blue38;
\red0\green0\blue0;\red255\green255\blue255;\red0\green0\blue0;\red47\green180\blue29;}
{\*\expandedcolortbl;;\csgenericrgb\c10196\c10196\c10196;\csgenericrgb\c10588\c12157\c13333;\csgenericrgb\c14902\c14902\c14902;
\csgray\c0;\csgray\c100000;\cssrgb\c0\c0\c0;\cssrgb\c20238\c73898\c14947;}
\paperw11905\paperh16837\margl1440\margr1440\vieww27000\viewh13900\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs24 \cf2 \expnd0\expndtw0\kerning0
#Run TrimGalore! (Wrapper script using Cutadapt, trim adapters and low-quality bases) + FastQC (quality check)
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf3 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 #Example run on all H. cydno chioneus brain RNA-seq samples 
\f1\b0 \cf4 \
\pard\pardeftab720\partightenfactor0
\cf2 cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Germany_LMU_120_RNASeq_WOBI/raw_data/BRAIN/CP/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/CP\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
  mkdir ./$i/                 \
  (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Trim\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf7 echo '#SBATCH -n 1'; echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2  echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load \cf0 cutadapt/1.9.1\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load trimgalore/0.4.4\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load fastqc/0.11.5\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2  echo "\cf4 trim_galore\cf2  --illumina --paired --\cf3 length 30 --stringency 3 --trim-n \cf2 --\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 fastqc \cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 --\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 output_dir\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/CP\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i/ \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Germany_LMU_120_RNASeq_WOBI/raw_data/BRAIN/CP\cf2 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i/*
\f0\b \cf8 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 _1.fq.gz
\f1\b0 \cf2 \cb1  \cf5 \cb6 /data/home/wolfproj/wolfproj-06/Germany_LMU_120_RNASeq_WOBI/raw_data/BRAIN/CP\cf2 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i/*
\f0\b \cf8 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 _2.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
 done\cf3 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 ####NOTES
\f1\b0 \cf4 \
#last two files R1 and R2 (paired end files)\
\pard\pardeftab720\partightenfactor0
\cf3 #note that illumina adapters (5\'92-3\'92) have the same first 13bp at both 5\'92 end (left of insert) and 3\'92end (right of insert), and TrimGalore use the first 13bp of the adapter to trim \
\pard\pardeftab720\partightenfactor0
\cf4 #quality cutoff is 20 (Phred score) by default (trim the 3\'92 end)\
\pard\pardeftab720\partightenfactor0
\cf3 ##(cutadapt does only 3\'92 quality trimming) \
#--fastqc   Run FastQC once trimming is complete\
\pard\pardeftab720\partightenfactor0
\cf4 #\cf3 --length 30 (default pair-cutoff=20 bp)\cf4  \cf3 both reads of a read-pair need to be longer than \'93length = bp\'94 to be printed out as validated paired-end ##set it to 30, better to have \'93longer\'94 so less ambiguous mapping (and also not many reads lost), anyway if reads too short/ or bad quality or one of the pairs map and the other not, we will filter after the mapping stage\
#--stringency 3  !By default set to 1 = even a single base pair of overlapping sequence will be trimmed of the 3' end of any read #from the fastqc reports it introduces bias in sequence content in the 3\'92 end  # set it at 3 (Cutadapt default)\cf4 \
\pard\pardeftab720\partightenfactor0
\cf3 #--trim-n Removes Ns from either side of the read (better to get rid of Ns at ends, might be considered mismatch when mapping)\
}