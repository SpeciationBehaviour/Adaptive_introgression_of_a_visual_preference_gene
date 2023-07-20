{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red64\green11\blue217;\red255\green255\blue255;\red26\green26\blue26;
\red0\green0\blue0;\red0\green0\blue0;\red27\green31\blue34;\red251\green2\blue7;\red217\green11\blue0;
\red38\green38\blue38;\red127\green0\blue128;\red127\green127\blue127;\red255\green255\blue255;\red242\green242\blue242;
}
{\*\expandedcolortbl;;\cssrgb\c32308\c18668\c88227;\csgray\c100000;\csgenericrgb\c10196\c10196\c10196;
\csgray\c0;\cssrgb\c0\c0\c0;\csgenericrgb\c10588\c12157\c13333;\cssrgb\c100000\c14913\c0;\csgenericrgb\c85098\c4314\c0;
\csgenericrgb\c14902\c14902\c14902;\cssrgb\c57919\c12801\c57269;\cssrgb\c57046\c57047\c57046;\cssrgb\c100000\c100000\c100000;\csgenericrgb\c94902\c94902\c94902;
}
\paperw11905\paperh16837\margl1440\margr1440\vieww26580\viewh16100\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf0 \expnd0\expndtw0\kerning0
#In order to use Picard, need first to trasform SAM in sorted BAM \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf2 #Example with H. t. tristero\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 cd \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /2ndPass\cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
\pard\pardeftab720\partightenfactor0
\cf0   \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf0 java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar SortSam I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /2ndPass\cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 $i\cf0 /\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.proper.sam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /2ndPass\cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 $i\cf0 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam \expnd0\expndtw0\kerning0
\CocoaLigature1 SORT_ORDER=coordinate\cf4 ") | sbatch\cf7 \
 \cf4 done
\f0\b \cf6 \
\pard\pardeftab720\partightenfactor0
\cf8 \
\pard\pardeftab720\partightenfactor0
\cf6 \
\pard\pardeftab720\partightenfactor0
\cf0 #Add read group information
\f1\b0  
\f0\b \kerning1\expnd0\expndtw0 \

\f1\b0 #\expnd0\expndtw0\kerning0
RGID=flowcell id:lane id RGLB=unique_label RGPL=illumina RGPU=machine:run barcode RGSM=SAMPLE
\f0\b \
\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #EXAMPLE with H. t. tristero
\f0\b \
#Information to retrieve from fastq files\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC 11 
\f1\b0 \cf5 A00877:167:HTWYJDSXX:4:1101:3658:1031\

\f0\b \cf2 TTC 27 
\f1\b0 \cf5 A00877:167:HTWYJDSXX:4:1101:11017:1031\

\f0\b \cf2 TTC 3 
\f1\b0 \cf5 A00877:167:HTWYJDSXX:4:1101:1289:1031\

\f0\b \cf2 TTC 47 
\f1\b0 \cf5 A00877:167:HTWYJDSXX:4:1101:3206:1031\

\f0\b \cf2 TTC 75 
\f1\b0 \cf5 A00877:167:HTWYJDSXX:4:1101:6334:1031\cf0 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf0 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
#
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 11
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf9 \
\pard\pardeftab720\partightenfactor0
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf9 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 11
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 11
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf9 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWYJDSXX:4\cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC11\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00877:167
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 11
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf9  \cf0 \
#
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 27
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #
\f0\b \cf8 \

\f1\b0 \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf9 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 27
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 27
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf9 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWYJDSXX:4\cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC27\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00877:167
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 27
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf9  
\f0\b \cf8 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 3\cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf9 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 3
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 3
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf9 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWYJDSXX:4\cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC3\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00877:167
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 3
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf9  \
\pard\pardeftab720\partightenfactor0
\cf0 #
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 47\cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf9 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 47
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 47
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf9 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWYJDSXX:4\cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC47\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00877:167
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 47
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf9  \
\pard\pardeftab720\partightenfactor0
\cf0 #
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 75
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #
\f0\b \cf8 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf9 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 75
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 75
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf9 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWYJDSXX:4\cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC75\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00877:167
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 75
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf9  \
\cf4 \
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 #Mark duplicates\cf8 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #EXAMPLE with H. t. tristero\cf10 \
\pard\pardeftab720\partightenfactor0
\cf4 cd \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /2ndPass\cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/
\f0\b \cf2 TTC_new
\f1\b0 \cf0 \cb1 \
  \cf4 \expnd0\expndtw0\kerning0
\CocoaLigature1 mkdir ./$i/\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf4 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf0   \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J Markdupl'; \cf6 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf0 java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar\cf10  MarkDuplicates \cf8 I=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf2 TTC\cf0 \cb1 /
\f1\b0 2ndPass
\f0\b \cf2 \cb3 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \cf8 $i/rg_added_\kerning1\expnd0\expndtw0 \CocoaLigature0 sorted.Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/
\f0\b \cf2 TTC_new
\f1\b0 \cf8 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam CREATE_INDEX=true VALIDATION_STRINGENCY=LENIENT M=\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/
\f0\b \cf2 TTC_new
\f1\b0 \cf8 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 output.metrics\cf4 ") | sbatch\cf7 \
 \cf4 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \

\f1\b0 \
\

\f0\b #Split'N'Trim and reassign mapping qualities (\cf10 #
\f1\b0 \cf0 \kerning1\expnd0\expndtw0 https://gatkforums.broadinstitute.org/gatk/discussion/3891/calling-variants-in-rnaseq)
\f0\b \cf4 \expnd0\expndtw0\kerning0
\

\f1\b0 #SplitNCigarReads splits reads into exon segments and hard-clip any sequences overhanging into the intronic regions
\f0\b \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 #cd /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/TTC\
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #
\f1\b0 \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 rm slurm*
\f0\b \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #
\f0\b \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf10 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 cd \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/
\f0\b \cf2 TTC_new
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf2 TTC_new\

\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1   mkdir ./$i/\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf4 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf0   \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\cf4 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf12 \cb13 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf12 \cb13 '; \cf6 \cb1 echo '#SBATCH -n 1';echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  echo "\cf10 \cb14 java -jar \cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\cf10 \cb14 \expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T SplitNCigarReads -R \cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\cf10 \cb14 \expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/6_Picard_dedupl/BRAIN/
\f0\b \cf2 TTC_new/
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /\cf10 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cb14  -o \cf5 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf2 TTC_new
\f1\b0 \cf0 \cb1 /\cf4 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /\cf10 \cb14 \expnd0\expndtw0\kerning0
\CocoaLigature1 split.bam -rf ReassignOneMappingQuality -RMQF 255 -RMQT 60 -U ALLOW_N_CIGAR_READS\cf4 \cb1 ") | sbatch\cf7 \
 \cf4 done\
}