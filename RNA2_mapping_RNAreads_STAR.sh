{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red26\green26\blue26;\red0\green0\blue0;\red255\green255\blue255;
\red52\green52\blue52;\red128\green0\blue128;\red27\green31\blue34;\red133\green0\blue175;\red0\green0\blue0;
\red0\green0\blue255;\red64\green11\blue217;\red38\green38\blue38;\red127\green127\blue127;\red255\green255\blue255;
\red180\green36\blue25;\red251\green2\blue7;\red244\green246\blue249;\red198\green236\blue255;\red242\green242\blue242;
}
{\*\expandedcolortbl;;\csgenericrgb\c10196\c10196\c10196;\cssrgb\c0\c0\c0;\csgray\c100000;
\csgenericrgb\c20392\c20392\c20392;\csgenericrgb\c50196\c0\c50196;\csgenericrgb\c10588\c12157\c13333;\csgenericrgb\c52157\c0\c68627;\csgray\c0;
\cssrgb\c1680\c19835\c100000;\cssrgb\c32308\c18668\c88227;\csgenericrgb\c14902\c14902\c14902;\cssrgb\c57046\c57047\c57046;\cssrgb\c100000\c100000\c100000;
\csgenericrgb\c70588\c14118\c9804;\cssrgb\c100000\c14913\c0;\csgenericrgb\c95686\c96471\c97647;\csgenericrgb\c77647\c92549\c100000;\csgenericrgb\c94902\c94902\c94902;
}
\paperw11905\paperh16837\margl1440\margr1440\vieww28600\viewh16380\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 \expnd0\expndtw0\kerning0
#MAPPING RNA-seq reads to the H.melpomene genome - with STAR\
\
#First generate genome index (download genome version Hmel 2.5 from Lepbase)
\f1\b0 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf3 echo '#SBATCH -n 1'; echo '#SBATCH -t \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2  echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load \cf0 STAR/2.4.2a\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf5 STAR\cf2  \cf6 \kerning1\expnd0\expndtw0 --runThreadN \cf0 1 \cf6 --runMode \cf0 genomeGenerate \cf6 --genomeDir \cf0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 3_\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR/Hmel2_index_newdata/ \cf6 \CocoaLigature1 --genomeFastaFiles \cf0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\CocoaLigature1  \cf6 --sjdbGTFfile \cf0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_annotations/Hmel2.5.gff3 \cf6 \CocoaLigature1 --sjdbGTFtagExonParentTranscript \cf0 Parent \cf6 --sjdbOverhang \cf0 144\cf2 \expnd0\expndtw0\kerning0
") | sbatch\cf0 \kerning1\expnd0\expndtw0 \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 #NOTES
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf6 #\'97sjdbOverhang \cf0 specifies the length of the genomic sequence around the annotated junction to be used in constructing the splice junctions database. Ideally, this length should be equal to the ReadLength-1, where ReadLength is the length of the reads. For instance, for Illumina 2x100b paired-end reads, the ideal value is 100-1=99. \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 \
#Parameters to tune 
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf6 #--outFilterMismatchNmax \cf0 10 (default) maximum number of mismatches per pair  \
\cf6 #--outFilterMismatchNoverReadLmax 0.\cf0 1 (default)  max number of mismatches per pair relative to read length (example 0.04 >  for 2x100b, max number of mis-matches is 0.04*200=8\
\cf6 #--outFilterMismatchNoverLmax \cf0 0.03  (default) alignment will be output only if its ratio of mismatches to *mapped* length is less than or equal to this value\
\cf6 #--outFilterScoreMinOverLread\cf7 \expnd0\expndtw0\kerning0
 0.66 (default) \cf0 \kerning1\expnd0\expndtw0 alignment will be output only if its score is higher than or equal to this value (normalized to read length) (sum of mates' lengths for paired-end reads)\cf7 \expnd0\expndtw0\kerning0
\
\cf6 \kerning1\expnd0\expndtw0 #\cf8 \expnd0\expndtw0\kerning0
--outFilterMatchNminOverLread\cf7  0.66 (default) \cf0 \kerning1\expnd0\expndtw0 alignment will be output only if the number of matched bases is higher than or equal to this value (normalized to read length) #so 2/3 of the read\
\
\cf2 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 #1st-pass - mapping\
\pard\pardeftab720\partightenfactor0
\cf0 \kerning1\expnd0\expndtw0 \
#example with H. c. chioneus 
\f1\b0 \cf2 \expnd0\expndtw0\kerning0
\
cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/\cf10 CP \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /\cf11 \cb4 1stPass_new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
  mkdir ./$i/\
  cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /\cf11 \cb4 1stPass_new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 $i/\cf12 \
\pard\pardeftab720\partightenfactor0
\cf7   \cf2 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf3 echo '#SBATCH -n 1'; echo '#SBATCH -t \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2  \cf13 \cb14 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf13 \cb14 '; \cf2 \cb1 echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load \cf0 STAR/2.4.2a\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf5 STAR \cf6 \kerning1\expnd0\expndtw0 --runThreadN \cf0 1\cf5 \expnd0\expndtw0\kerning0
 \cf6 \kerning1\expnd0\expndtw0 --genomeDir \cf0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 3_\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR/
\f0\b \cf10 Hmel2_index_newdata
\f1\b0 \cf0 / \cf6 \CocoaLigature1 --readFilesIn \cf9 \cb4 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/
\f0\b \cf10 CP
\f1\b0 \cf9 /\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /*\cf15 _1.fq.gz\cf0  \cf9 \cb4 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/
\f0\b \cf10 CP
\f1\b0 \cf0 \cb1 /\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /*\cf15 _2.fq.gz\cf0  \cf6 \CocoaLigature1 --readFilesCommand \cf0 zcat \cf6 --outFilterType \cf0 BySJout \cf6 --outSAMattributes \cf0 NH HI AS nM XS \cf6 --outFilterMismatchNmax \cf0 15 \cf6 --outFilterMismatchNoverReadLmax \cf0 0.1 \cf6 --outFilterMismatchNoverLmax \cf0 0.1 
\f0\b \cf6 --outFilterScoreMinOverLread\cf7 \expnd0\expndtw0\kerning0
 0.5 \cf8 --outFilterMatchNminOverLread\cf7  0.5
\f1\b0 \cf2 ") | sbatch\cf7 \
 \cf2 done\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \kerning1\expnd0\expndtw0 #2nd-pass\cf16 \
\
\pard\pardeftab720\partightenfactor0
\cf0 #example with H. c. chioneus \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \expnd0\expndtw0\kerning0
cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/\cf10 CP\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /2ndPass\cf11 \cb4 _new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
  mkdir ./$i/\
  cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /2ndPass\cf11 \cb4 _new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 $i/\cf12 \
\pard\pardeftab720\partightenfactor0
\cf7   \cf2 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf3 echo '#SBATCH -n 1'; echo '#SBATCH -t \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2  \cf13 \cb14 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf13 \cb14 '; \cf2 \cb1 echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load \cf0 STAR/2.4.2a\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf5 STAR \cf6 \kerning1\expnd0\expndtw0 --runThreadN \cf0 1 \cf6 --genomeDir \cf0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 3_\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 STAR/
\f0\b \cf10 Hmel2_index_newdata
\f1\b0 \cf0 / \cf6 \CocoaLigature1 --sjdbFileChrStartEnd \cf9 \cb4 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /1stPass\cf11 \cb4 _new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 *\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /*J.out.tab \cf6 \CocoaLigature1 --readFilesIn \cf9 \cb4 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/\cf10 CP\cf0 \cb1 /\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /*\cf15 _1.fq.gz\cf0  \cf9 \cb4 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/2_TrimGalore/BRAIN/\cf10 CP\cf0 \cb1 /\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /*\cf15 _2.fq.gz\cf0  \cf6 \CocoaLigature1 --readFilesCommand \cf0 zcat \cf6 --outSAMattributes \cf0 NH HI AS nM XS \cf6 --outFilterMismatchNmax \cf0 15 \cf6 --outFilterMismatchNoverReadLmax \cf0 0.1 \cf6 --outFilterMismatchNoverLmax \cf0 0.1 
\f0\b \cf6 --outFilterScoreMinOverLread\cf7 \expnd0\expndtw0\kerning0
 0.5 \cf8 --outFilterMatchNminOverLread\cf7  0.5
\f1\b0 \cf2 ") | sbatch\cf7 \
 \cf2 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf0 #KEEP ONLY PROPER (MAPPED) PAIRS
\f1\b0 \cf12 \
\pard\pardeftab720\partightenfactor0
\cf2 cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /2ndPass\cf11 \cb4 _new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf9 \cb4 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/\cf10 CP
\f0\b \cf0 \cb1 /2ndPass\cf11 \cb4 _new\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 $i\
  (echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n \cf0 \kerning1\expnd0\expndtw0 1\cf2 \expnd0\expndtw0\kerning0
'; echo '\cf0 module load \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools/1.4.1\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf7 \cb17 samtools view \cf12 \cb18 -h \cb19 -f 0x02 \cf7 \cb17 Aligned.out.sam > Aligned.out.proper.sam\cf2 \cb1 ") | sbatch\cf0 \
\pard\pardeftab720\partightenfactor0
\cf7  \cf2 done}