{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPS-BoldMT;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red251\green2\blue255;
\red255\green255\blue255;\red180\green36\blue25;\red0\green0\blue0;\red26\green26\blue26;\red64\green11\blue217;
\red27\green31\blue34;\red251\green2\blue7;\red217\green11\blue0;\red38\green38\blue38;\red127\green127\blue127;
\red17\green21\blue26;\red217\green236\blue245;\red34\green136\blue174;\red0\green0\blue255;\red242\green242\blue242;
\red247\green238\blue241;\red242\green239\blue236;\red85\green138\blue3;\red27\green31\blue34;\red244\green246\blue249;
\red38\green38\blue38;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;\cssrgb\c100000\c25279\c100000;
\csgray\c100000;\cssrgb\c76409\c21698\c12524;\csgray\c0;\csgenericrgb\c10196\c10196\c10196;\cssrgb\c32308\c18668\c88227;
\csgenericrgb\c10588\c12157\c13333;\cssrgb\c100000\c14913\c0;\csgenericrgb\c85098\c4314\c0;\csgenericrgb\c14902\c14902\c14902;\cssrgb\c57046\c57047\c57046;
\cssrgb\c8235\c10980\c13333;\cssrgb\c87843\c94118\c96863;\cssrgb\c14902\c60392\c73725;\cssrgb\c1680\c19835\c100000;\cssrgb\c96078\c96078\c96078;
\cssrgb\c97647\c94902\c95686;\cssrgb\c96078\c94902\c94118;\cssrgb\c40000\c60000\c0;\cssrgb\c14118\c16078\c18039;\cssrgb\c96471\c97255\c98039;
\cssrgb\c20000\c20000\c20000;}
\paperw11905\paperh16837\margl1440\margr1440\vieww28140\viewh15800\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\
#PREPARE FILES\
#For some genome re-sequencing files need to concatenate because of multiple sequencing runs (H. melpomene bellula and H. timareta tristero) \
\pard\pardeftab720\sl340\partightenfactor0
\cf2 #Concatenate\cf4 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40043_DSW45071_H325GCCXY_L2_1.clean.fq.gz\cf2  \cf6 CAM40043_DSW45071_H52M7CCXY_L3_1.clean.fq.gz \cf2 > \cf6 CAM40043_DSW45071_H52M7CCXY_1.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40043_DSW45071_H325GCCXY_L2_2.clean.fq.gz\cf2  \cf6 CAM40043_DSW45071_H52M7CCXY_L3_2.clean.fq.gz \cf2 > \cf6 CAM40043_DSW45071_H52M7CCXY_2.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40048_DSW45072_H325GCCXY_L2_1.clean.fq.gz\cf2  \cf6 CAM40048_DSW45072_H52M7CCXY_L4_1.clean.fq.gz \cf2 > \cf6 CAM40048_DSW45072_H52M7CCXY_1.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40048_DSW45072_H325GCCXY_L2_2.clean.fq.gz\cf2  \cf6 CAM40048_DSW45072_H52M7CCXY_L4_2.clean.fq.gz \cf2 > \cf6 CAM40048_DSW45072_H52M7CCXY_2.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40058_DSW45073_H325GCCXY_L2_1.clean.fq.gz\cf2  \cf6 CAM40058_DSW45073_H52M7CCXY_L4_1.clean.fq.gz \cf2 > \cf6 CAM40058_DSW45073_H52M7CCXY_1.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 CAM40058_DSW45073_H325GCCXY_L2_2.clean.fq.gz\cf2  \cf6 CAM40058_DSW45073_H52M7CCXY_L4_2.clean.fq.gz \cf2 > \cf6 CAM40058_DSW45073_H52M7CCXY_2.fq.gz
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf4 \cb3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat CAM40013_DSW45004_H325GCCXY_L1_1.clean.fq.gz CAM40013_DSW45004_H52M7CCXY_L3_1.clean.fq.gz > CAM40013_DSW45004_H52M7CCXY_1.clean.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch
\f0\b \cf4 \cb3 \

\f1\b0 \cf2 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat CAM40013_DSW45004_H325GCCXY_L1_2.clean.fq.gz CAM40013_DSW45004_H52M7CCXY_L3_2.clean.fq.gz > CAM40013_DSW45004_H52M7CCXY_2.clean.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
#change names so all have same end, example:\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 mv CAM40013_DSW45004_H52M7CCXY_1.clean.fq.gz CAM40013_DSW45004_H52M7CCXY_1.fq.gz\cf4 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \
\pard\pardeftab720\sl340\partightenfactor0
\cf2 #For some files, first convert files from bz2 to .fq.gz \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 convert
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb3 bzcat HM_CS17.read1.bz2 | bgzip > HM_CS17_read1.fq.gz
\f1\b0 \cb1 ") | sbatch
\f0\b \cb3 \

\f1\b0 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 convert
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb3 bzcat HM_CS17.read2.bz2 | bgzip > HM_CS17_read2.fq.gz
\f1\b0 \cb1 ") | sbatch
\f0\b \cb3 \

\f1\b0 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 convert
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb3 bzcat \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 Cat_HM_CS16.read1.bz2\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  | bgzip > \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 Cat_HM_CS16\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 _read1.fq.gz
\f1\b0 \cb1 ") | sbatch
\f0\b \cb3 \

\f1\b0 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 convert
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb3 bzcat \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 Cat_HM_CS16.read2.bz2
\f1\b0 \cf7  
\f0\b \cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  | bgzip > \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 Cat_HM_CS16\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 _read2.fq.gz
\f1\b0 \cb1 ") | sbatch
\f0\b \cf4 \cb3 \
\pard\pardeftab720\sl340\partightenfactor0
\cf2 #Concatenate \cf4 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 Cat_HM_CS16\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 _read1.fq.gz\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf6 Cat_HM_CS16_R1.fq.gz\cf2  > \cf6 Cat_HM_CS16\cf2 _1.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cf6 Cat_HM_CS16\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 _read2.fq.gz\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf6 Cat_HM_CS16_R2.fq.gz\cf2  > \cf6 Cat_HM_CS16\cf2 _2.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 HM_CS17_read1.fq.gz\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0  HM_CS17_R1.fq.gz > HM_CS17_1.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch
\f0\b \cb3 \

\f1\b0 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 concat
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 zcat \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 HM_CS17_read2.fq.gz\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0  HM_CS17_R2.fq.gz > HM_CS17_2.fq.gz
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\pardeftab720\sl340\partightenfactor0

\f0\b \cf4 \cb3 \
\
\
\pard\pardeftab720\partightenfactor0
\cf2 #Align reads to H. melpomene reference genome with bwa
\f1\b0 \cf0 \
\pard\pardeftab720\sl340\partightenfactor0
\cf0 #Examples with  H. m. bellula
\f0\b \cf4 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf8 \cb1 cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/bellula_tristero_genomic_data/bellula/\cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  mkdir \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\
  cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\
\pard\pardeftab720\partightenfactor0
\cf0   \cf8 (echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb3 bwa\cf2 \cb1 '\cf8 ; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  \cf2 echo '\cf0 \cb3 module load bwa/0.7.15\cf2 \cb1 ';\cf8  echo "\cf0 \cb3 bwa mem /\cf2 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene\cf0 \expnd0\expndtw0\kerning0
\CocoaLigature1 /Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/bellula_tristero_genomic_data/
\f0\b \cf9 bellula
\f1\b0 \cf7 /\cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf0 \cb3 *
\f0\b \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 1.fq.gz
\f1\b0 \cf0 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/bellula_tristero_genomic_data/
\f0\b \cf9 bellula
\f1\b0 \cf7 /\cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf0 \cb3 *
\f0\b \cf6 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 2.fq.gz
\f1\b0 \cf0 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  > \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/$i.\cf0 \cb3 aligned.sam\cf8 \cb1 ") | sbatch\cf10 \
 \cf8 done\cf0 \cb3 \
\pard\pardeftab720\sl340\partightenfactor0

\f0\b \cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf2 #Transform in sorted bam files\cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\pard\pardeftab720\partightenfactor0
\cf0   \cf8 (echo '#!/bin/bash'; echo '#SBATCH -J samtools\cf2 '\cf8 ; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  \cf2 echo '\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 module load samtools/1.4.1\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "
\f0\b \cf11 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools sort 
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 *\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 .
\f0\b \cf11 sam > 
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i.sorted.bam") | sbatch\cf10 \
 \cf8 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf2 #Index files\cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 bellula/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\pard\pardeftab720\partightenfactor0
\cf0   \cf8 (echo '#!/bin/bash'; echo '#SBATCH -J samtools\cf2 '\cf8 ; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  \cf2 echo '\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 module load samtools/1.4.1\cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "
\f0\b \cf11 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools index 
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 *.bam") | sbatch\cf10 \
 \cf8 done
\f0\b \cf4 \cb3 \
\pard\pardeftab720\sl340\partightenfactor0
\cf4 \
\
\pard\pardeftab720\partightenfactor0
\cf0 \
#Add Read Group with Picard\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf2 \cb1 #Example for some files\cf0 \kerning1\expnd0\expndtw0  (H. timareta tristero = TTC)
\f0\b \cb3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \cb1 #RGID=id RGLB=library RGPL=illumina RGPU=machine RGSM=sample
\f0\b \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #\expnd0\expndtw0\kerning0
RGID=flowcell id:lane id RGLB=\'93every one it\'92s own\'94 RGPL=illumina RGPU=machine:run barcode RGSM=SAMPLE 
\f0\b \
#Example \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC CAM40013\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 : RGID=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 H325GCCXY:1
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTCCAM40013\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 ST-E00192
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40013
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf12 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40013
\f1\b0 \cf7   @ST-E00192:469:H325GCCXY:1:1101:19603:1555\

\f0\b \cf9 CAM40100
\f1\b0 \cf7   @ST-E00192:469:H325GCCXY:2:1101:14336:1432\

\f0\b \cf9 R_4311
\f1\b0 \cf7  @ST-E00205:588:HL5LJCCXY:4:1101:5883:1801 \

\f0\b \cf9 R_4410
\f1\b0 \cf7   @ST-E00522:367:HL3Y7CCXY:1:1101:14407:1661\cf0 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf0 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
#
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40013
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\pard\pardeftab720\partightenfactor0
\cf8 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/CAM40013/
\f1\b0 \cf7 CAM40013_R1R2.sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/CAM40013/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 H325GCCXY:1
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTCCAM40013\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 ST-E00192:469
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40013
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  \
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40100
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\pard\pardeftab720\partightenfactor0
\cf8 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/TTC_GENOMIC/CAM40100/CAM40100_R1R2.sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/CAM40100/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 H325GCCXY:2
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40100\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 ST-E00192:469
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 CAM40100
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  
\f0\b \cf0 \cb3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \cb1 \
#
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC R_4311
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\
\pard\pardeftab720\partightenfactor0
\cf8 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/TTC_GENOMIC/
\f0\b \cf9 R_4311
\f1\b0 \cf7 /
\f0\b \cf9 R_4311
\f1\b0 \cf7 _R1R2.sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/R_4311/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 HL5LJCCXY:4
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 R_4311\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 ST-E00205:588
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 R_4311
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf0 \
#
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 TTC R_4410
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\
\pard\pardeftab720\partightenfactor0
\cf8 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/TTC_GENOMIC/
\f0\b \cf9 R_4410
\f1\b0 \cf7 /
\f0\b \cf9 R_4410
\f1\b0 \cf7 _R1R2.sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/R_4410/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 HL3Y7CCXY:1
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 R_4410\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 ST-E00522:367
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 R_4410
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf0 \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 #Mark Duplicates and re-index
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf8 cd /\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd /\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\pard\pardeftab720\partightenfactor0
\cf0   \cf8 (echo '#!/bin/bash'; echo '#SBATCH -J Markdupl'; \cf2 echo '#SBATCH -n 1';echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf8  echo "\cf0 java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar\cf13  MarkDuplicates \cf11 I=\cf8 /\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/
\f1\b0 \cf8 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf11 rg_added_\kerning1\expnd0\expndtw0 \CocoaLigature0 sorted.Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf8 /\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/
\f1\b0 \cf11 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam CREATE_INDEX=true VALIDATION_STRINGENCY=LENIENT M=\cf8 /\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC/
\f1\b0 \cf11 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 output.metrics\cf8 ") | sbatch\cf10 \
 \cf8 done
\f0\b \cf0 \cb3 \
\
\
\
\
#Variant Calling (Haplotype Caller) \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf2 \cb1 #Example for one file\cf0 \kerning1\expnd0\expndtw0  (H. timareta tristero = TTC)\cb3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0
\cf8 \cb1 cd \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/TTC/
\f0\b \cf9 R_4266
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\
\
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 6-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf2 \cb1  \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/
\f0\b \cf9 TTC_GENOMIC
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 R_4266
\f1\b0 \cf0 \cb1 /\cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cf0  \cf15 \cb16 --emitRefConfidence GVCF \cf17 \cb1 --heterozygosity 0.02 \cf0 -o \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/TTC/
\f0\b \cf9 R_4266
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf") | sbatch\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 \cb3 \
\
\
#Combined genotyping for all samples same species (Combine = Genotype GVCF)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf2 \cb1 #Example with H. m . bellula
\f0\b \cf0 \cb3 \
\pard\pardeftab720\partightenfactor0
\cf0 #Combine GVCF \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J \cf18 \cb19 GVCFs\cf0 \cb1 '; \cf2 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 6-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf18 \cb1  echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb19 CombineGVCFs\cb1  -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 24228
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 25231
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 CAM40043
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 CAM40048
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf\cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf14 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 CAM40049
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 CAM40050
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 CAM40058
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 Cat_HM_CS16
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf14 \cb2 --variant\cf18 \cb1  \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/
\f0\b \cf9 HM_CS17
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /output.g.vcf \cf11 -o \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/MBgenomic\cf11 \cb1 _\expnd0\expndtw0\kerning0
\CocoaLigature1 combined.\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 g.\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 vcf") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf2 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 #\cb3 GenotypeGVCFs\cb1  
\f1\b0 \cb3 \
(echo '#!/bin/bash'; echo '#SBATCH -J \cf11 \cb19 GVCFs\cf2 \cb3 '; echo '#SBATCH -n 1'; \cf11 echo '#SBATCH -t 6-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb1  \cf2 \cb3 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T GenotypeGVCFs -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  --variant \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/MBgenomic_combined.g.vcf\cf2 \cb3  \expnd0\expndtw0\kerning0
\CocoaLigature1 -o 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBgenomic_gentoyped.g.vcf\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch
\f0\b \cf0 \
\pard\pardeftab720\partightenfactor0
\cf18 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb1 #\cb3 if want to include invariant sites\cf18 \

\f1\b0 \cf2 (echo '#!/bin/bash'; echo '#SBATCH -J \cf11 \cb19 GVCFs\cf2 \cb3 '; echo '#SBATCH -n 1'; \cf11 echo '#SBATCH -t 6-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb1  \cf2 \cb3 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T GenotypeGVCFs -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  --variant \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/MB/MBgenomic_combined.g.vcf\cf2 \cb3  \expnd0\expndtw0\kerning0
\CocoaLigature1 -o 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBgenomic_gentoyped
\f0\b \cf6 W\cf4 ITHINVARIANT\cf6 .g.vcf 
\f1\b0 \cf7 -allSites\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch
\f0\b \cf0 \
\pard\pardeftab720\partightenfactor0
\cf11 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf18 \cb3 \
\
\
\pard\pardeftab720\partightenfactor0
\cf0 #Filtering variants 
\f1\b0 \cf2 #https://vcftools.github.io/man_latest.html\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf2 \cb1 #Example with H. m . bellula
\f0\b \cf18 \cb19 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb3 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 #Filter variants
\f1\b0 \
(echo '#!/bin/bash'; echo '#SBATCH -J \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cb1 echo 'module load \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools/0.1.14 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb3  echo "\cb20 vcftools --vcf 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBgenomic_gentoyped
\f0\b \cf6 W\cf4 ITHINVARIANT\cf6 .g.vcf
\f1\b0 \cf2 \cb20 \expnd0\expndtw0\kerning0
\CocoaLigature1  --out 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBfiltered_
\f0\b \cf6 with\cf4 MAC
\f1\b0 \cf2 \cb19 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cb20 --minQ 30 --minDP 8 
\f0\b \cf11 \cb1 --max-missing 0.3 
\f1\b0 \cf2 \cb19 --min-alleles 1 --max-alleles 2
\f0\b \cf11 \cb1  
\f1\b0 \cf2 \cb19 --
\f0\b \cf11 \cb1 mac 2 
\f1\b0 \cf2 \cb20 --recode --recode-INFO-all\cb3 ") | sbatch\
\

\f0\b #Extract variants calls heterozygous in < 75% of files
\f1\b0 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 \cb1 echo '#SBATCH -n 1'; \cf2 echo '#SBATCH -t \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb3  echo "\cb21 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 java -jar \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \shad0 /data/home/wolfproj/wolfproj-06/10_introgression_line/FILTRATION_TOOL/jvarkit/dist\cb21 \expnd0\expndtw0\kerning0
\CocoaLigature1 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 /vcffilterjdk.jar -e 'return variant.getGenotypes().stream().filter(\cf22 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 G->G.isHet()\cf23 \cb24 \shad0 ).count()< \cf2 \cb1 7\cb21 \shad\shadx0\shady-20\shadr0\shado255 \shadc0 ;' \cf7 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \shad0 /\cf2 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/\cf7 MBfiltered_
\f0\b \cf6 with\cf4 MAC
\f1\b0 \cf7 .recode.vcf\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  > /\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/\cf7 MBfiltered_
\f0\b \cf6 with\cf4 MAC
\f1\b0 \cf7 .vcf\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf2 #Extracts SNPs (no indels)
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf2 (echo '#!/bin/bash'; echo '#SBATCH -J \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cb1 echo 'module load \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools/0.1.14 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb3  echo "\cb20 vcftools --vcf 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBfiltered_
\f0\b \cf6 with\cf4 MAC
\f1\b0 \cf7 .recode.vcf\cf2 \cb20 \expnd0\expndtw0\kerning0
\CocoaLigature1  --out 
\f0\b \cf9 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf7 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/12A_GATK_tristero_bellula/GATK_RESULTS/FILTERED/MBfiltered_
\f0\b \cf6 with\cf4 MAC
\f1\b0 \cf7 _NO_INDELS\cf2 \cb19 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf25 \cb1 --remove-indels \cf2 \cb20 --recode --recode-INFO-all\cb3 ") | sbatch\
\
\
}