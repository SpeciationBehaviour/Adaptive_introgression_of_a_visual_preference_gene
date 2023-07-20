{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red26\green26\blue26;
\red251\green2\blue7;\red0\green0\blue0;\red127\green0\blue128;\red64\green11\blue217;\red251\green2\blue255;
\red127\green127\blue127;\red255\green255\blue255;\red253\green128\blue8;\red38\green38\blue38;\red242\green242\blue242;
\red38\green38\blue38;\red242\green242\blue242;\red34\green136\blue174;\red247\green238\blue241;\red27\green31\blue34;
}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\csgray\c100000;\csgenericrgb\c10196\c10196\c10196;
\cssrgb\c100000\c14913\c0;\csgray\c0;\cssrgb\c57919\c12801\c57269;\cssrgb\c32308\c18668\c88227;\cssrgb\c100000\c25279\c100000;
\cssrgb\c57046\c57047\c57046;\cssrgb\c100000\c100000\c100000;\cssrgb\c100000\c57637\c0;\csgenericrgb\c14902\c14902\c14902;\csgenericrgb\c94902\c94902\c94902;
\cssrgb\c20000\c20000\c20000;\cssrgb\c96078\c96078\c96078;\cssrgb\c14902\c60392\c73725;\cssrgb\c97647\c94902\c95686;\csgenericrgb\c10588\c12157\c13333;
}
\paperw11905\paperh16837\margl1440\margr1440\vieww28600\viewh16380\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 \cb3 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 #Variant calling (HaplotypeCaller)\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf2 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 #Example with F1 H. Cydno x H. melpomene hybrids 
\f0\b \cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  \cf4 cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i/\
  (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK
\f0\b \cf8 \cb3 T
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf2 echo '#SBATCH -n 1';\cf9  \cf10 \cb11 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf10 \cb11 '; \cf2 \cb1 echo '#SBATCH -t 3-
\f0\b \cf8 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 2
\f1\b0 \cf2 3:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '\cf7 #SBATCH -\cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 p 
\f0\b prevail
\f1\b0 \cf2 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T HaplotypeCaller -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  -I \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i/split.bam -dontUseSoftClippedBases -stand_call_conf 20.0 -o \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 output.g.vcf") | sbatch\
 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf12 \
\pard\pardeftab720\partightenfactor0
\cf4 #Variant filtering \cf13   
\f1\b0 \cf0 \
cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i/\
  (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; \cf2 echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cf13 \cb14 VariantFiltration\cf0 \cb1  -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  \cf13 \cb14 -V\cf0 \cb1  \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 output.\cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 g.\cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 vcf \cf13 \cb14 -window 35 -cluster 3 -filterName FS -filter \cf0 \cb1 '\cf13 \cb14 FS > 30.0\cf0 \cb1 '\cf13 \cb14  -filterName QD -filte\cf5 r \cf0 \cb1 '\cf13 \cb14 QD < 2.0\cf0 \cb1 '\cf13 \cb14  -o \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\cf13 \cb14 \expnd0\expndtw0\kerning0
\CocoaLigature1 filtered.output.vcf\cf0 \cb1 ") | sbatch\
 done\
\

\f0\b \cf4 #keep only filtered SNPs
\f1\b0 \cf0 \
cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i/\
  (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 GATK\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; \cf2 echo '#SBATCH -t \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 echo "java -jar \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/7_GATK/\expnd0\expndtw0\kerning0
\CocoaLigature1 GenomeAnalysisTK.jar -T \cf15 \cb16 SelectVariants\cf0 \cb1  -R \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\expnd0\expndtw0\kerning0
\CocoaLigature1  \cf13 \cb14 -V\cf0 \cb1  /\cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\cf13 \cb14 \expnd0\expndtw0\kerning0
\CocoaLigature1 filtered.output.vcf\cf0 \cb1  \cf2 \cb16 -selectType SNP\cb11 \kerning1\expnd0\expndtw0 \CocoaLigature0  
\f0\b \cf17 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 --
\f1\b0 excludeFiltered\cf13 \cb14  -o /\cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /$i\kerning1\expnd0\expndtw0 \CocoaLigature0 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i.\cf13 \cb14 passed.output.snps.vcf\cf0 \cb1 ") | sbatch\
 done\
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 #keep only balletic SNPs \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 #(could do in one step above using --restrictAllelesTo BIALLELIC\cf13 \cb14 )
\f0\b \cf2 \cb1 \

\f1\b0 \cf0 cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  \cf0 cd \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\
\cf0   \cf4 (\cf2 \cb11 echo '#!/bin/bash'; echo '#SBATCH -J \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1';\cb1  \cb11 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf10 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf10 \cb11 '; \cf2 \cb1 echo 'module load \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 vcftools/0.1.14 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb11  echo "\cb18 vcftools --vcf \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 $i.\cf13 \cb14 passed.output.snps.vcf\cf2 \cb18  --out \cf6 \cb3 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/7_
\f0\b \cf7 GATK
\f1\b0 \cf6 /BRAIN/
\f0\b \cf2 F1_MPCP\cf8 _new
\f1\b0 \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /\cf4 $i/\cf0 $i.\cf13 \cb14 passed.output.snps.BIA\cf2 \cb16   --min-alleles 2 --max-alleles 2 
\f0\b \cf5 \cb1  
\f1\b0 \cf2 \cb18 --recode --recode-INFO-all\cb11 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf19 \cb1  \cf4 done
\f0\b \cf2 \
}