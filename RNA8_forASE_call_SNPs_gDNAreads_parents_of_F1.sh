{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red251\green2\blue255;\red255\green255\blue255;\red0\green0\blue0;
\red26\green26\blue26;\red0\green0\blue0;\red255\green255\blue255;\red64\green11\blue217;\red180\green36\blue25;
\red27\green31\blue34;\red251\green2\blue7;\red217\green11\blue0;\red38\green38\blue38;\red127\green127\blue127;
\red34\green136\blue174;\red0\green0\blue255;\red242\green242\blue242;\red38\green38\blue38;\red242\green242\blue242;
}
{\*\expandedcolortbl;;\cssrgb\c100000\c25279\c100000;\cssrgb\c100000\c100000\c100000;\cssrgb\c0\c0\c0;
\csgenericrgb\c10196\c10196\c10196;\csgray\c0;\csgray\c100000;\cssrgb\c32308\c18668\c88227;\cssrgb\c76409\c21698\c12524;
\csgenericrgb\c10588\c12157\c13333;\cssrgb\c100000\c14913\c0;\csgenericrgb\c85098\c4314\c0;\csgenericrgb\c14902\c14902\c14902;\cssrgb\c57046\c57047\c57046;
\cssrgb\c14902\c60392\c73725;\cssrgb\c1680\c19835\c100000;\csgenericrgb\c94902\c94902\c94902;\cssrgb\c20000\c20000\c20000;\cssrgb\c96078\c96078\c96078;
}
\paperw11905\paperh16837\margl1440\margr1440\vieww28600\viewh16380\viewkind0
\deftab720
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\sl340\partightenfactor0
\cf4 #Align DNA reads from parents F1 to H. melpomnene genome
\f1\b0 \cf0 \
#bwa mem reference.fa read1.fq.gz read2.fq.gz > r1r2.sam 
\f0\b \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf5 \cb1 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/DNA_F1parents_raw_reads_2019/H201SC19100520/raw_data/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  mkdir \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\
\cf0   \cf5 (echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb3 bwa\cf4 \cb1 '\cf5 ; \cf4 echo '#SBATCH -n 1'; echo '#SBATCH -t 
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 2
\f1\b0 \cf4 3:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '\cf0 \cb3 module load bwa/0.7.15\cf4 \cb1 ';\cf5  echo "\cf0 \cb3 bwa mem /\cf4 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene\cf0 \expnd0\expndtw0\kerning0
\CocoaLigature1 /Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/DNA_F1parents_raw_reads_2019/H201SC19100520/raw_data/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf0 \cb3 *
\f0\b \cf9 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 1.fq.gz
\f1\b0 \cf0 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/DNA_F1parents_raw_reads_2019/H201SC19100520/raw_data/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf0 \cb3 *
\f0\b \cf9 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 2.fq.gz
\f1\b0 \cf0 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  > \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents
\f1\b0 \cf6 /\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/$i.\cf0 \cb3 aligned.sam\cf5 \cb1 ") | sbatch\cf10 \
 \cf5 done
\f0\b \cf0 \cb3 \
\pard\pardeftab720\sl340\partightenfactor0
\cf4 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf4 #TRANSFORM FILES IN SORTED BAM \cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\cf0   \cf5 (echo '#!/bin/bash'; echo '#SBATCH -J samtools\cf4 '\cf5 ; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  \cf4 echo '\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 module load samtools/1.4.1\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "
\f0\b \cf11 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools sort 
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 *\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 .
\f0\b \cf11 sam > 
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i.sorted.bam") | sbatch\cf10 \
 \cf5 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf4 #INDEX \cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\cf0   \cf5 (echo '#!/bin/bash'; echo '#SBATCH -J samtools\cf4 '\cf5 ; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  \cf4 echo '\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 module load samtools/1.4.1\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "
\f0\b \cf11 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools index 
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 *.bam") | sbatch\cf10 \
 \cf5 done
\f0\b \cf2 \cb3 \
\cf0 \
\
#Add Read Group
\f1\b0 \cb1 \
\cf5 #\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 Example with 4 files\cf0 \cb1 \CocoaLigature1 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf12 \expnd0\expndtw0\kerning0
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_1 
\f1\b0 \cf6 @A00783:221:HTWGYDSXX:2:1101:2880:100\

\f0\b \cf8 DNA_2 
\f1\b0 \cf6 @A00783:221:HTWGYDSXX:3:1101:1380:1000\

\f0\b \cf8 DNA_3 
\f1\b0 \cf6 @A00783:221:HTWGYDSXX:3:1101:3929:1000\

\f0\b \cf8 DNA_4 
\f1\b0 \cf6 @A00783:221:HTWGYDSXX:3:1101:2374:1000\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\
\pard\pardeftab720\partightenfactor0
\cf0 #
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_1
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\cf5 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_1
\f1\b0 \cf4 /
\f0\b \cf8 DNA_1
\f1\b0 \cf6 .sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_1
\f1\b0 \cf4 /\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWGYDSXX:2
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_1\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00783:221
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 1
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  \
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_2
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\cf5 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_2
\f1\b0 \cf4 /
\f0\b \cf8 DNA_2
\f1\b0 \cf6 .sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_2
\f1\b0 \cf4 /\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWGYDSXX:3
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_2\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00783:221
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 2
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  \cf5 \
\cf0 \
#
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_3
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\cf5 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_3
\f1\b0 \cf4 /
\f0\b \cf8 DNA_3
\f1\b0 \cf6 .sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_3
\f1\b0 \cf4 /\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWGYDSXX:3
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_3\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00783:221
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 3
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  \cf0 \
\
#
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_4
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #\cf12 \
\cf5 (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 Picard\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "\cf12 java -jar \cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar AddOrReplaceReadGroups I=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_4
\f1\b0 \cf4 /
\f0\b \cf8 DNA_4
\f1\b0 \cf6 .sorted.bam\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_4
\f1\b0 \cf4 /\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 rg_added_sorted.\kerning1\expnd0\expndtw0 \CocoaLigature0 Aligned.out.bam\cf12 \expnd0\expndtw0\kerning0
\CocoaLigature1  
\f0\b \cf0 RGID=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 HTWGYDSXX:3
\f0\b \cf0 \cb1  \expnd0\expndtw0\kerning0
\CocoaLigature1 RGLB=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_4\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGPL=illumina RGPU=
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 A00783:221
\f0\b \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1  RGSM=\cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 4
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf12  \
\cf0 \
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 #MARK DUPLICATES AND REINDEX
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf5 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\cf0   \cf5 (echo '#!/bin/bash'; echo '#SBATCH -J Markdupl'; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf5  echo "\cf0 java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/4_Picard_mappingQC\expnd0\expndtw0\kerning0
\CocoaLigature1 /picard.jar\cf13  MarkDuplicates \cf11 I=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf11 rg_added_\kerning1\expnd0\expndtw0 \CocoaLigature0 sorted.Aligned.out.bam\expnd0\expndtw0\kerning0
\CocoaLigature1  O=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf11 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam CREATE_INDEX=true VALIDATION_STRINGENCY=LENIENT M=\cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf11 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 output.metrics\cf5 ") | sbatch\cf10 \
 \cf5 done\

\f0\b \cf0 \cb3 \
\
\
\pard\pardeftab720\sl340\partightenfactor0
\cf4 #Variant calling (Haplotype caller)
\f1\b0 \cf5 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf5 \
\cf0 ##
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_1
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_1
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 13-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4 \cb1  \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_1
\f1\b0 \cf0 \cb1 /\cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cf0  \cf15 --heterozygosity 0.02 \cf0 -o \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_1/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 output.vcf") | sbatch\
\
##
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_2
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\cf5 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_2
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 13-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4 \cb1  \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_2
\f1\b0 \cf0 \cb1 /\cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cf0  \cf15 --heterozygosity 0.02 \cf0 -o \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_2/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 output.vcf") | sbatch
\f0\b \cb3 \
\

\f1\b0 \cb1 ##
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_3
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\cf5 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_3
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 13-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4 \cb1  \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_3
\f1\b0 \cf0 \cb1 /\cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cf0  \cf15 --heterozygosity 0.02 \cf0 -o \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_3/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 output.vcf") | sbatch
\f0\b \cb3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf11 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf0 ##
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 DNA_4
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\cf5 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_4
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
(echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf4 echo '#SBATCH -n 1'; \cf14 \cb3 echo '#SBATCH -t 13-\kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 p prevail\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4 \cb1  \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/DNA_4
\f1\b0 \cf0 \cb1 /\cf11 \expnd0\expndtw0\kerning0
\CocoaLigature1 dedupl.sorted.bam\cf0  \cf15 --heterozygosity 0.02 \cf0 -o \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/DNA_4/
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 output.vcf") | sbatch
\f0\b \cb3 \
\pard\pardeftab720\partightenfactor0
\cf16 \
\
\
\pard\pardeftab720\partightenfactor0
\cf4 #Filtering (hard-filters)\cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 #Parameters #https://gatk.broadinstitute.org/hc/en-us/articles/360035890471-Hard-filtering-germline-short-variants\
#Best Practices hard-filters #https://gatk.broadinstitute.org/hc/en-us/articles/360035531112--How-to-Filter-variants-either-with-VQSR-or-by-hard-filtering
\f0\b \cf11 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf5 \cb1 \
cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf6 RESULTS/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf6 RESULTS/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\cf0   \cf5 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cf4 \cb3 hardfilter
\f1\b0 \cf5 \cb1 '; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf14 \cb3  echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; \cf5 \cb1 echo "
\f0\b \cf11 \cb3 java -jar /
\f1\b0 \cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar
\f0\b \cf11 \cb3  -T VariantFiltration -R /data/home/wolfproj/wolfproj-16/assemblies/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa -V /
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 output.vcf
\f0\b \cf11 \cb3  
\f1\b0 \cf4 \cb17 -filterName FS -filter \cb1 '\cb17 FS > 60.0\cb1 '\cb17  -filterName QD -filter \cb1 '\cb17 QD < 2.0\cb1 '\cf18  \cf4 \cb17 -filterName QUAL -filter \cb1 '\cb17 QUAL < 30.0\cb1 ' \cb17 -filterName MQ -filter \cb1 '\cb17 MQ < 40.0\cb1 ' \cb17 -filterName SOR -filter \cb1 '\cb17 SOR > 3.0\cb1 ' \cb17 -filterName ReadPosRankSum -filter \cb1 '\cb17 ReadPosRankSum < -8.0\cb1 ' \cb17 -filterName MQRankSum -filter \cb1 '\cb17 MQRankSum < -12.5\cb1 ' 
\f0\b \cf11 \cb3 -o 
\f1\b0 \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf6 RESULTS/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\cf11 \cb3 output_filtered.vcf\cf5 \cb1 ") | sbatch\cf10 \
 \cf5 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf11 \cb3 \
\cf4 #Keep SNPs only and BIALLELIC
\f1\b0 \cf11 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb1 cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf6 RESULTS/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/
\f1\b0 \cf6 RESULTS/\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i/\
\cf0   \cf5 (e\cf4 \cb3 cho '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf14 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb3 '; \cf4 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cb19 SelectVariants\cb3  -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  \cf11 -V \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf11 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.vcf\cf4  \cb19 -selectType SNP 
\f0\b \cb1 --restrictAllelesTo BIALLELIC
\f1\b0 \cf13 \cb17  \cf11 \cb3 --excludeFiltered \cf4 -o \cf6 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/
\f0\b \cf8 23_ASE
\f1\b0 \cf6 /
\f0\b \cf8 GATK_parents/RESULTS/
\f1\b0 \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 $i
\f0\b \cf8 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 /
\f1\b0 \cf11 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 output_filtered.snps.bia\cf4 \cb7 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\cf10 \cb1  \cf5 done\
\pard\pardeftab720\partightenfactor0
\cf14 \
}