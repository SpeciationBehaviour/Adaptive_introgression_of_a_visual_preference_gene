{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue255;\red85\green142\blue40;\red0\green0\blue0;
\red0\green0\blue0;\red255\green255\blue255;\red64\green11\blue217;\red251\green2\blue7;\red255\green255\blue255;
\red62\green62\blue62;\red127\green0\blue128;\red26\green26\blue26;\red242\green242\blue242;\red251\green2\blue255;
\red242\green242\blue242;\red127\green127\blue127;\red38\green38\blue38;\red251\green0\blue7;}
{\*\expandedcolortbl;;\cssrgb\c1680\c19835\c100000;\cssrgb\c39975\c61335\c20601;\cssrgb\c0\c0\c0;
\csgray\c0;\csgray\c100000;\cssrgb\c32308\c18668\c88227;\cssrgb\c100000\c14913\c0;\cssrgb\c100000\c100000\c100000;
\cssrgb\c31200\c30900\c30900;\cssrgb\c57919\c12801\c57269;\csgenericrgb\c10196\c10196\c10196;\csgenericrgb\c94902\c94902\c94902;\cssrgb\c100000\c25279\c100000;
\cssrgb\c96078\c96078\c96078;\cssrgb\c57046\c57047\c57046;\csgenericrgb\c14902\c14902\c14902;\cssrgb\c100000\c0\c0;}
\paperw11905\paperh16837\margl1440\margr1440\vieww28600\viewh16380\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs24 \cf2 #PREPARE FILES\cf3 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 #bgzip \cf3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_3/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_4/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_7/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_9/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_1P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_2P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_3P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_4P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf4 #
\f0\b \kerning1\expnd0\expndtw0 and tabix
\f1\b0 \expnd0\expndtw0\kerning0
\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_3/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_4/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_7/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_9/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \cf4 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_1P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_2P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch\
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_3P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch\
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_4P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf2 #F1 hybrid and parents relationships:\cf3 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf7 \cb6 \CocoaLigature0 F1 H. cydno x H. melpomene - F1_MPCP_new:
\f1\b0 \cf5    brood \cf0 \cb1 \CocoaLigature1 P19_011: (DNA_1
\f0\b \cf8 P
\f1\b0 \cf0  father CP, DNA_2
\f0\b \cf8 P
\f1\b0 \cf0  mother MP) - F1 samples 
\f0\b \cf7 \cb6 \CocoaLigature0 273
\f1\b0 \cf5  
\f0\b \cf7 292 298
\f1\b0 \cf5   brood \cf0 \cb1 \CocoaLigature1 P19_007 (DNA_3
\f0\b \cf8 P
\f1\b0 \cf0  father CP, DNA_4
\f0\b \cf8 P
\f1\b0 \cf0  mother MP) - F1 samples 
\f0\b \cf7 \cb6 \CocoaLigature0 90 152 200\
F1 H. cydno x H. Timareta - F1_CCTTC_new:  
\f1\b0 \cf5 brood  \cf0 \cb1 \CocoaLigature1 C020: 
\f0\b \cf7 \cb6 \CocoaLigature0 (DNA_3 CC mother, DNA_4 father TTC) - 
\f1\b0 \cf0 \cb1 \CocoaLigature1 F1 samples  
\f0\b \cf7 \cb6 \CocoaLigature0 101
\f1\b0 \cf5  
\f0\b \cf7 105
\f1\b0 \cf5  
\f0\b \cf7 99    
\f1\b0 \cf0 \cb1 \CocoaLigature1 CO26: 
\f0\b \cf7 \cb6 \CocoaLigature0 (DNA_7 TTC father, DNA_9 CC mother)- 
\f1\b0 \cf0 \cb1 \CocoaLigature1 F1 samples  
\f0\b \cf7 \cb6 \CocoaLigature0 382 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf3 \cb1 \CocoaLigature1 \
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf2 #GET OPPOSITE SPECIES ALLELES FOR THE DIFFERENT PARENT PAIRS\cf4 \cb6 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf4 mkdir 
\f1\b0 \cf5 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 \

\f0\b \cf4 mkdir 
\f1\b0 \cf5 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 \

\f0\b \cf4 mkdir 
\f1\b0 \cf5 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 \

\f0\b \cf4 mkdir 
\f1\b0 \cf5 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 \
\

\f0\b \cf4 \
#DNA_3 vs. DNA_4
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #isec\
(echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_3/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_4/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf4 #bgzip\kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf4 0000.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch #first in isec 
\f0\b #CC mother
\f1\b0 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf4 0001.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #TTC father
\f1\b0 \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf4 \
\pard\pardeftab720\partightenfactor0
\cf4 #tabix\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \cf4 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch\kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0
\cf2 #index \
\pard\pardeftab720\partightenfactor0
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch  #DNA_3\cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 C020\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch #DNA_4
\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf3 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb6 \CocoaLigature0 #DNA_7 vs. DNA_9 
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #isec\
(echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_7/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 DNA_9/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
#bgzip\kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf4 0000.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #TTC father
\f1\b0 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf4 0001.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #CC mother
\f1\b0 \
\
#tabix\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \cf4 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\
#index \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf2 \cb1 \CocoaLigature1 C026\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch 
\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf5 \cb6 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 #DNA_1P vs. DNA_2P
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #isec\
(echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_1P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_2P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
#bgzip\kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf4 0000.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #CP father
\f1\b0 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf4 0001.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #MP mother
\f1\b0 \
\
#tabix\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \cf4 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\
#index \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \cb1 \CocoaLigature1 \
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb6 \CocoaLigature0 #DNA_3P vs. DNA_4P
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #isec\
(echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_3P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /
\f0\b \cf7 GATK_parents/
\f1\b0 \cf5 RESULTS/
\f0\b \cf7 PANAMA
\f1\b0 \cf5 /
\f0\b \cf7 DNA_4P/
\f1\b0 \cf8 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cf2 \cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
#bgzip\kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf4 0000.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #CP father
\f1\b0 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 bgzip \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 bgzip \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf4 0001.vcf\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch 
\f0\b #MP mother
\f1\b0 \
\
#tabix\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \cf4 \kerning1\expnd0\expndtw0 \
\expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 tabix \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 5\expnd0\expndtw0\kerning0
'; echo "\kerning1\expnd0\expndtw0 tabix -p vcf \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\expnd0\expndtw0\kerning0
") | sbatch \kerning1\expnd0\expndtw0 \
\
#index \
\cf4 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools
\f0\b \cb1 \CocoaLigature1  
\f1\b0 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf10 \kerning1\expnd0\expndtw0 5\cf4 \expnd0\expndtw0\kerning0
'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index
\f0\b \kerning1\expnd0\expndtw0  
\f1\b0 \cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_007\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
") | sbatch
\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \expnd0\expndtw0\kerning0
#RNA variants - PREPARE FILES
\f1\b0 \cf0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #bgzip files
\f1\b0 \cb9 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 \
  \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bgzip \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/
\f0\b \cf12 $i\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf0 \
 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #index
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 \
  \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/
\f0\b \cf12 $i\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1 ") | sbatch\cf0 \
 done\
\

\f0\b \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #bgzip files
\f1\b0 \cb9 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 \
  \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bgzip \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/
\f0\b \cf12 $i\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf0 \
 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #index
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 \
  \cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools index \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_CCTTC\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/
\f0\b \cf12 $i\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1 ") | sbatch\cf0 \
 done\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \kerning1\expnd0\expndtw0 \
\
\
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0
\cf2 #OVERLAP RNA AND DNA variants - ASE READER\cf14 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb6 \CocoaLigature0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 #Example with #
\f1\b0 \cb1 \CocoaLigature1 P19_011\
\pard\pardeftab720\partightenfactor0
\cf5 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 #\cf0 \kerning1\expnd0\expndtw0 DNA_1
\f0\b \cf8 P
\f1\b0 \cf0  father CP\cf4 \cb9 \CocoaLigature0 \
\cf5 \cb6 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 #\cf0 \kerning1\expnd0\expndtw0 DNA_2
\f0\b \cf8 P
\f1\b0 \cf0  mother MP\cf5 \cb6 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf4 \
\
\pard\pardeftab720\partightenfactor0
\cf14 #OVERLAP WITH CYDNO FATHER 
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf0 \kerning1\expnd0\expndtw0 DNA_1
\f0\b \cf8 P
\f1\b0 \cf0  father CP\cf4 \cb13 \expnd0\expndtw0\kerning0
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #273
\f1\b0 \cf2 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \shad0 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 273
\f1\b0 \cf4 /
\f0\b \cf2 273\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273/
\f1\b0 \cf4 ") | sbatch\cf0 \
\pard\pardeftab720\partightenfactor0
\cf2 #0003.vcf are intersects\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #292
\f1\b0 \cf5   \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 292
\f1\b0 \cf4 /
\f0\b \cf2 292\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292/
\f1\b0 \cf4 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 ##298
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0000.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 298
\f1\b0 \cf4 /
\f0\b \cf2 298\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298/
\f1\b0 \cf4 ") | sbatch\cf2 \
\
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb15 #SORT VCF #ordering of scaffolds must be the same as in reference\cf16 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \cb1 cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf2 P19_011
\f1\b0 \cf5 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf2 P19_011
\f1\b0 \cf5 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cb15 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9   (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 sort\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; echo "\cb15 java -jar \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC/\cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 picard.jar SortVcf I=\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.vcf\cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 SEQUENCE_DICTIONARY=\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.dict\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
 done\cf16 \
\pard\pardeftab720\partightenfactor0
\cf12 \
\pard\pardeftab720\partightenfactor0
\cf8 \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b \cf2 \kerning1\expnd0\expndtw0 #ASE READER #count how many alleles correspond to father and mother genotype\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf2 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf7 \cb6 \CocoaLigature0 #273 
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/to_CP/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273
\f1\b0 \cf4 .toCP.\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #292
\f1\b0 \cf5  
\f0\b \cf7  
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/to_CP/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292
\f1\b0 \cf4 .toCP.\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ##298
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/to_CP/
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298
\f1\b0 \cf4 .toCP.\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch
\f0\b \cf8 \
\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b \cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #OVERLAP WITH MELPOMENE MOTHER 
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf0 \kerning1\expnd0\expndtw0 DNA_2
\f0\b \cf8 P
\f1\b0 \cf0  mother MP\CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 #273
\f1\b0 \cf2 \cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \shad0 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 \cb14 0001.vcf\CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 273
\f1\b0 \cf4 /
\f0\b \cf2 273\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273/
\f1\b0 \cf4 ") | sbatch\cf0 \
\pard\pardeftab720\partightenfactor0
\cf2 #0003.vcf are intersects\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #292
\f1\b0 \cf5   \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 292
\f1\b0 \cf4 /
\f0\b \cf2 292\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292/
\f1\b0 \cf4 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 ##298
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 (echo '#!/bin/bash'; echo '#SBATCH -J bcftools'; echo '#SBATCH -n 1'; echo 'module load \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bcftools/1.4.1\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "bcftools isec \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /SNPs_PARENTS/\cf0 \cb1 \CocoaLigature1 P19_011\cf5 \cb6 \CocoaLigature0 /\cf2 0001.vcf\cb1 \CocoaLigature1 .gz\cf4 \expnd0\expndtw0\kerning0
 \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf11 GATK
\f1\b0 \cf5 /BRAIN/
\f0\b \cf4 F1_MPCP\cf7 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf2 298
\f1\b0 \cf4 /
\f0\b \cf2 298\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .passed.output.snps.BIA.recode.vcf
\f1\b0 \cf4 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gz\cb1  -p \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298/
\f1\b0 \cf4 ") | sbatch\cf0 \kerning1\expnd0\expndtw0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 #SORT VCF #ordering of scaffolds must be the same #as in reference\cf16 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \cb1 cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf2 P19_011
\f1\b0 \cf5 /\cb14 toMP\cb6 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf2 P19_011
\f1\b0 \cf5 /\cb14 toMP\cb6 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\cb15 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9   (echo '#!/bin/bash'; echo '#SBATCH -J \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 sort\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; echo "\cb15 java -jar \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC/\cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 picard.jar SortVcf I=\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cb14 toMP\cb6 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.vcf\cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/P19_011/\cb14 toMP\cb6 /\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 SEQUENCE_DICTIONARY=\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.dict\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
 done\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b \cf2 \CocoaLigature1 #ASE READER
\f1\b0 \cf0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 #273 
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 273
\f1\b0 \cf4 .\cf5 \cb14 \kerning1\expnd0\expndtw0 \CocoaLigature0 toMP\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
\cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #292
\f1\b0 \cf5  
\f0\b \cf7  
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 292
\f1\b0 \cf4 .\cf5 \cb14 \kerning1\expnd0\expndtw0 \CocoaLigature0 toMP\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ##298
\f1\b0 \cf12 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb9 (echo '#!/bin/bash'; echo '#SBATCH -J \cb15 ASE\cb9 '; echo '#SBATCH -n \cb15 2\cb9 '; \cb1 echo '#SBATCH -t \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf12   \cf4 \cb9 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb15 ASEReadCounter \cb9 -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cb15 \expnd0\expndtw0\kerning0
\CocoaLigature1 -I \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_GATK/BRAIN/
\f0\b \cf7 F1_MPCP_new/\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298
\f1\b0 \cf4 /\cf17 \cb13 split.bam\cf4 \cb1  \cb15 -sites \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf7 23_ASE
\f1\b0 \cf5 /overlap_DNA_RNA/
\f0\b \cf14 P19_011
\f1\b0 \cf5 /\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298/
\f1\b0 \cf4 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 0003.sort.vcf\cb1 \CocoaLigature1  \cb15 \expnd0\expndtw0\kerning0
-U ALLOW_N_CIGAR_READS -minDepth 4 --minBaseQuality 2 \cf18 \cb9 -drf DuplicateRead -o \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/23_ASE/ALLELE_COUNTS/P19_011/\cb14 toMP\cb6 /
\f0\b \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 298
\f1\b0 \cf4 .\cf5 \cb14 \kerning1\expnd0\expndtw0 \CocoaLigature0 toMP\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cb15 allele_counts\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .csv\cb9 \expnd0\expndtw0\kerning0
\CocoaLigature1 "\cb1 ) | sbatch
\f0\b \cf8 \
\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\b \cf7 \cb6 #same procedure for other F1 hybrids with different parents
\f1\b0 \cf0 \cb1 \
}