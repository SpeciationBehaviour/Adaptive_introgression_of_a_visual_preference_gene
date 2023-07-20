{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPS-BoldMT;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red127\green127\blue127;\red0\green0\blue0;
\red255\green255\blue255;\red0\green0\blue255;\red246\green246\blue246;\red0\green0\blue0;\red251\green0\blue255;
\red251\green2\blue7;\red244\green244\blue244;\red27\green31\blue34;\red244\green246\blue249;\red47\green180\blue29;
\red255\green255\blue255;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000;\cssrgb\c57046\c57047\c57046;\csgray\c0;
\csgray\c100000;\cssrgb\c1680\c19835\c100000;\cssrgb\c97255\c97255\c97255;\cssrgb\c0\c0\c0;\cssrgb\c100000\c7248\c100000;
\cssrgb\c100000\c14913\c0;\cssrgb\c96471\c96471\c96471;\cssrgb\c14118\c16078\c18039;\cssrgb\c96471\c97255\c98039;\cssrgb\c20238\c73898\c14947;
\cssrgb\c100000\c100000\c99985;}
\margl1440\margr1440\vieww24980\viewh10480\viewkind0
\deftab720
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b\fs24 \cf0 \cb2 #PARSE TOGETHER VCF (variant calling files) from H. t. tristero and H. c. cydno
\f1\b0 \cb1 \
\pard\pardeftab720\partightenfactor0
\cf3 \cb2 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb1 \kerning1\expnd0\expndtw0 parseVCF\cb2 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf0 \cb1 \kerning1\expnd0\expndtw0 10\cf3 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb1 \kerning1\expnd0\expndtw0 python \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf3 \cb1 \CocoaLigature1 parseVCFs.py -i \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/ccydn\cf6 o\cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf8 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz\cf3 \cb1 \CocoaLigature1  -i \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf6 tristero\cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf8 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz \cf4 --skipIndels\cf3 \cb1 \CocoaLigature1  > \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/20_Fst_dxy_pi/\cf6 \cb1 \CocoaLigature1 output.geno.tristero_ccydno
\f0\b \cf9 ALL
\f1\b0 \cf6 .ALLCHR.vcf\cf3 \cb2 \expnd0\expndtw0\kerning0
") | sbatch\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf10 \cb5 \CocoaLigature0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf8 \cb1 \CocoaLigature1 #remove * (deletions), then bgzip and tabix
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf8 \cb11 \expnd0\expndtw0\kerning0
awk '!/\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 *\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 /' \cb1 \kerning1\expnd0\expndtw0 output.geno.tristero_ccydno
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf8 .vcf\cb11 \expnd0\expndtw0\kerning0
 > \cb1 \kerning1\expnd0\expndtw0 output.geno.tristero_ccydno_NOINDEL_NOSYMBOL
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf8 .vcf\
\pard\pardeftab720\partightenfactor0
\cf8 \cb2 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip\cf8 \cb2 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf8 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb11 bgzip \cb1 \kerning1\expnd0\expndtw0 output.geno.tristero_ccydno_NOINDEL_NOSYMBOL
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf8 .vcf\cb2 \expnd0\expndtw0\kerning0
") | sbatch\cb11 \
\cb2 (echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip\cf8 \cb2 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf8 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb11 tabix \cb1 \kerning1\expnd0\expndtw0 output.geno.tristero_ccydno_NOINDEL_NOSYMBOL
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf8 .vcf\cb5 \CocoaLigature0 .gz\cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf0 \cb2 \CocoaLigature1 #RUN FST and dxy analysis \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf8 #can be done all at once with \cb5 \CocoaLigature0 popgenWindows.py script available at {\field{\*\fldinst{HYPERLINK "https://github.com/simonhmartin/genomics_general/tree/master/"}}{\fldrslt https://github.com/simonhmartin/genomics_general/tree/master/}}\cf12 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf8 \cb2 (echo '#!/bin/bash'; echo '#SBATCH -J \cf12 \cb13 popgen\cf8 \cb2 '; echo '#SBATCH -n \cf0 \cb1 \kerning1\expnd0\expndtw0 1\cf8 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cf3 \cb2  \cf8 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf3  \cf8 echo "\cf12 \cb13 python \cf4 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/genomics_general/
\f0\b \cf14 popgenWindows.py
\f1\b0 \cf12 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1  -w 20000 -m 2000 -s 5000 -g \cf4 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/20_Fst_dxy_pi/\cf8 \cb1 \CocoaLigature1 output.geno.tristero_ccydno_NOINDEL_NOSYMBOL
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf8 .vcf\cb5 \CocoaLigature0 .gz\cf12 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1  -o \cf4 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/20_Fst_dxy_pi/\cf6 \cb1 \CocoaLigature1 output.geno.tristero_\cf8 ccydno_m2000
\f0\b \cf9 ALL
\f1\b0 \cf8 .\cf6 ALLCHR\cf12 \cb13 \expnd0\expndtw0\kerning0
.csv.gz -f phased -p cyd_cyd -p tim_tri --popsFile \cf4 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf9 \cb15 Population_dataNEW.pop.txt\cf4 \cb5  \cf12 \cb13 \expnd0\expndtw0\kerning0
\CocoaLigature1 -T 2\cf8 \cb2 ") | sbatch\
}