{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPS-BoldMT;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red255\green255\blue255;\red27\green31\blue34;\red127\green127\blue127;
\red47\green180\blue29;\red255\green255\blue255;\red251\green2\blue7;\red154\green154\blue154;\red0\green0\blue255;
\red0\green0\blue0;\red244\green244\blue244;\red246\green246\blue246;\red22\green21\blue22;\red0\green0\blue0;
\red127\green0\blue128;\red64\green11\blue217;\red251\green2\blue255;\red244\green246\blue249;\red180\green36\blue25;
\red180\green36\blue25;\red251\green0\blue255;\red255\green255\blue255;\red251\green0\blue7;\red253\green128\blue8;
\red179\green179\blue179;}
{\*\expandedcolortbl;;\cssrgb\c100000\c100000\c100000;\cssrgb\c14118\c16078\c18039;\cssrgb\c57046\c57047\c57046;
\cssrgb\c20238\c73898\c14947;\csgray\c100000;\cssrgb\c100000\c14913\c0;\csgray\c66775;\cssrgb\c1680\c19835\c100000;
\cssrgb\c0\c0\c0;\cssrgb\c96471\c96471\c96471;\cssrgb\c97255\c97255\c97255;\cssrgb\c11373\c10980\c11373;\csgray\c0;
\cssrgb\c57919\c12801\c57269;\cssrgb\c32308\c18668\c88227;\cssrgb\c100000\c25279\c100000;\cssrgb\c96471\c97255\c98039;\cssrgb\c76409\c21698\c12524;
\cssrgb\c76411\c21697\c12527;\cssrgb\c100000\c7248\c100000;\cssrgb\c100000\c100000\c99985;\cssrgb\c100000\c12195\c0;\cssrgb\c100000\c57637\c0;
\csgray\c75407;}
\margl1440\margr1440\vieww23540\viewh13940\viewkind0
\deftab720
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b\fs24 \cf0 \cb2 #DOWNLOAD TWISST \cf3 \expnd0\expndtw0\kerning0
#https://github.com/simonhmartin/twisst
\f1\b0 \cf4 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf4 \expnd0\expndtw0\kerning0
#download the twisst package zip file from github\
wget https://github.com/simonhmartin/twisst/archive/v0.2.tar.gz\
#extract the files from the zipped file\
tar -xzf v0.2.tar.gz\
#remove the zipped file\
rm v0.2.tar.gz\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf5 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 #NEED ETE TOOLKIT http://etetoolkit.org/download/
\f1\b0 \cf7 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf8 # Install Minconda, then:
\f1\b0 \
export PATH=$HOME/anaconda5.2/bin:\kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/ENTER\expnd0\expndtw0\kerning0
\CocoaLigature1 /bin\
conda install -c etetoolkit ete3 ete_toolchain\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf8 ete3 upgrade-external-tools phyml\
\pard\pardeftab720\partightenfactor0
\cf8 /data/home/wolfproj/wolfproj-06/
\f0\b /100_NEW_ANALYSES_2020/14_Twisst/miniconda/ETE\

\f1\b0 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ete3 build check
\f0\b \cf9 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf9 \
\
#Prepare files\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf9 #Example with H.t. tristero and H. c. cydno
\f0\b \
\
#Remove deletions, then bgzip and tabix\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf10 \cb11 \expnd0\expndtw0\kerning0
awk '!/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 *\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 /' \cf9 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf10 \cb1 \kerning1\expnd0\expndtw0  \cb11 \expnd0\expndtw0\kerning0
> \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf10 withINVARIANT_PHASED.snps.vcf\cf13 \
\pard\pardeftab720\partightenfactor0
\cf9 \cb11 awk '!/\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 *\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 /' \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ccydn\cf9 o\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf10 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf9 \cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 > \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ccydn\cf9 o\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf13 withINVARIANT_PHASED.snps.vcf
\f0\b \cf7 \cb2 \kerning1\expnd0\expndtw0 \
\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf10 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b bgzip
\f1\b0 '; echo '#SBATCH -n 
\f0\b \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b bgzip 
\f1\b0 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf10 withINVARIANT_PHASED.snps.vcf\cb2 ") | sbatch
\f0\b \kerning1\expnd0\expndtw0 \

\f1\b0 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cf3 bgzip
\f1\b0 \cf10 '; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf10 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f0\b \cf3 bgzip 
\f1\b0 \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ccydn\cf9 o\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf13 withINVARIANT_PHASED.snps.vcf\cf10 \cb2 ") | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf10 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J t\cb12 abix\cb2 '; echo '#SBATCH -n 
\f0\b \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb12 tabix \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf10 withINVARIANT_PHASED.snps.vcf.gz\cb2 ") | sbatch\
(echo '#!/bin/bash'; echo '#SBATCH -J t\cf13 \cb12 abix\cf10 \cb2 '; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf10 \cb2 \expnd0\expndtw0\kerning0
';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf13 \cb12 tabix \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ccydn\cf9 o\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf13 withINVARIANT_PHASED.snps.vcf\cf10 .gz\cb2 ") | sbatch\
\pard\pardeftab720\partightenfactor0

\f0\b \cf15 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf15 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf9 \kerning1\expnd0\expndtw0 #Phase/Impute genotypes - Beagle
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf9 #Example with H.t. tristero\cf4 \expnd0\expndtw0\kerning0
\
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cf9 beagle
\f1\b0 \cf4 '; \cf10 \cb1 echo '#SBATCH -n 
\f0\b \cf13 \cb12 2
\f1\b0 \cf10 \cb1 '; echo '#SBATCH -t 
\f0\b \cf16 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 2
\f1\b0 \cf10 3:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf17 echo '#SBATCH -\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 p fat\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4 \cb2  echo "\cf3 \cb18 java -Xmx12g -jar \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/
\f0\b \cf19 beagle.18May20.d20.jar
\f1\b0 \cf3 \cb18 \expnd0\expndtw0\kerning0
\CocoaLigature1  gt=\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/\cf10 tristero\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL_\cf10 withINVARIANT_PHASED.snps.vcf.gz\cf3 \cb18  out=\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf13 .ALLCHR.PHASED.IMPUTED.vcf.gz\cf3 \cb18  impute=true\cf4 \cb2 ") | sbatch
\f0\b \cf13 \cb12 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf10 \
\pard\pardeftab720\partightenfactor0
\cf10 \cb2 (echo '#!/bin/bash'; echo '#SBATCH -J \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 gunzip\cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 
\f0\b \cb12 2
\f1\b0 \cb2 ';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 gunzip tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf13 .ALLCHR.PHASED.IMPUTED.vcf.gz
\f0\b \cf20 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf.gz
\f1\b0 \cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cb12 \
\pard\pardeftab720\partightenfactor0
\cf0 \cb2 \kerning1\expnd0\expndtw0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf10 \cb6 \CocoaLigature0 #remove chr21/sex chromosome from files
\f1\b0 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf10 \cb11 awk '!/\cb2 \kerning1\expnd0\expndtw0 chr21\cb11 \expnd0\expndtw0\kerning0
/' \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf13 .ALLCHR.PHASED.IMPUTED.vcf.gz
\f0\b \cf20 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 .vcf
\f1\b0 \cf10 \cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1  > \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf10 .ALLCHR.PHASED.IMPUTED.NOCHR21.vcf\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf0 \cb2 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf10 \cb12 \expnd0\expndtw0\kerning0
#ADD header on top in the file \cf13 (need later for parsevcfs) \cf10 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 \cb2 \kerning1\expnd0\expndtw0 nano \cf14 \cb6 \CocoaLigature0 tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf10 .ALLCHR.PHASED.IMPUTED.NOCHR21.vcf\
\pard\pardeftab720\partightenfactor0

\f0\b \cf13 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 ##contig=<ID=chr1,length=17206585>\
##contig=<ID=chr2,length=9045316>\
##contig=<ID=chr3,length=10541528>\
##contig=<ID=chr4,length=9662098>\
##contig=<ID=chr5,length=9908586>\
##contig=<ID=chr6,length=14054175>\
##contig=<ID=chr7,length=14308859>\
##contig=<ID=chr8,length=9320449>\
##contig=<ID=chr9,length=8708747>\
##contig=<ID=chr10,length=17965481>\
##contig=<ID=chr11,length=11759272>\
##contig=<ID=chr12,length=16327298>\
##contig=<ID=chr13,length=18127314>\
##contig=<ID=chr14,length=9174305>\
##contig=<ID=chr15,length=10235750>\
##contig=<ID=chr16,length=10083215>\
##contig=<ID=chr17,length=14773299>\
##contig=<ID=chr18,length=16803890>\
##contig=<ID=chr19,length=16399344>\
##contig=<ID=chr20,length=14871695>\
##contig=<ID=chr21,length=13359691>\
\
\
\pard\pardeftab720\partightenfactor0
#bgzip and tabix\
\pard\pardeftab720\partightenfactor0
\cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bgzip\cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 
\f0\b \cb12 2
\f1\b0 \cb2 ';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 bgzip tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf10 .ALLCHR.PHASED.IMPUTED.NOCHR21.vcf\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf17 \cb1 \
\cf10 \cb2 (echo '#!/bin/bash'; echo '#SBATCH -J \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tabix\cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 
\f0\b \cb12 2
\f1\b0 \cb2 ';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tabix tristero\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf9 ALL\cf10 .ALLCHR.PHASED.IMPUTED.NOCHR21.vcf\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz\cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\cf0 \kerning1\expnd0\expndtw0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf21 \cb22 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf0 \cb2 \CocoaLigature1 \
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 \expnd0\expndtw0\kerning0
#PARSE VCF - FILES\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf15 #parse  together vcf, in this case from H. c. chioneus, H. t. tristero, H. m. bellula, H. m. rosina, H. numata 
\f1\b0 \cf0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb2 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cb1 \kerning1\expnd0\expndtw0 parseVCF\cb2 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \kerning1\expnd0\expndtw0 \CocoaLigature0 2\expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb1  \cb2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb1 \kerning1\expnd0\expndtw0 python \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf4 \cb1 \CocoaLigature1 parseVCFs.py -i \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/\cf10 chioneus\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 snps.ALLCHR.PHASED.IMPUTED.vcf.gz.vcf\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz\cf4 \cb1 \CocoaLigature1  -i \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/tristero.snps.\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 ALLCHR\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .PHASED.IMPUTED.vcf.gz.vcf.gz\cf10  \cf4 \cb1 \CocoaLigature1 -i \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/\cf7 bellula.snps.\cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 ALLCHR\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .PHASED.IMPUTED.vcf.gz.vcf.gz\cf10  \cf4 \cb1 \CocoaLigature1 -i \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 rosina\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .snps.\cf13 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 ALLCHR\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .PHASED.IMPUTED.vcf.gz.vcf.gz\cf10  \cf4 \cb1 \CocoaLigature1 -i \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/BEAGLE/PHASED_vcfs/
\f0\b \cf10 \cb2 numatas.
\f1\b0 \cb12 \expnd0\expndtw0\kerning0
\CocoaLigature1 snps.ALLCHR.PHASED.IMPUTED.vcf.gz.vcf\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz
\f0\b \cf19  
\f1\b0 \cf4 \cb1 \CocoaLigature1 > \cf14 \cb6 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/results/\cf9 \cb1 \CocoaLigature1 output.geno.TRI_BEL.PHASED.ALLCHR.vcf\cf4 \cb2 \expnd0\expndtw0\kerning0
") | sbatch\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf4 \cb2 \expnd0\expndtw0\kerning0
\
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 #INFER TREES IN SLIDING WINDOWS\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf15 \cb2 \expnd0\expndtw0\kerning0
#allow only a certain amount of missing data
\f1\b0 \cf4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb11 awk -FN -vcount=10 'NF<=count' \cf9 \cb1 \kerning1\expnd0\expndtw0 output.geno.TRI_BEL.PHASED.ALLCHR.vcf\cf4 \cb11 \expnd0\expndtw0\kerning0
 > \cf9 \cb1 \kerning1\expnd0\expndtw0 output.geno.TRI_BEL.PHASE_selection.ALLCHR.vcf\cf4 \cb2 \expnd0\expndtw0\kerning0
 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf9 #change N in - (ambiguous character in phyml = \'93-\'93) 
\f1\b0 \cf4 \expnd0\expndtw0\kerning0
\
awk '\{ gsub("N", "\cb11 -\cb1 "); print \}' \cf9 \kerning1\expnd0\expndtw0 output.geno.TRI_BEL.PHASE_selection.ALLCHR.vcf\cf4 \cb2 \expnd0\expndtw0\kerning0
 \cb11 > \cf9 \cb1 \kerning1\expnd0\expndtw0 output.geno.TRI_BEL.PHASE\cf4 \cb6 \CocoaLigature0 _\cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 newCHARACTER\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .\cf9 \cb1 \CocoaLigature1 ALLCHR\cf4 \cb6 \CocoaLigature0 .vcf\
\pard\pardeftab720\partightenfactor0
\cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf10 (echo '#!/bin/bash'; echo '#SBATCH -J twisst'; echo '#SBATCH -n \cf3 5\cf10 '; echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "python \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/
\f0\b genomics_general-0.3
\f1\b0 \cb2 /phylo\expnd0\expndtw0\kerning0
\CocoaLigature1 /phyml_sliding_windows.py -g \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/results/\cf9 \cb1 \CocoaLigature1 output.geno.TRI_BEL.PHASE\cf4 \cb6 \CocoaLigature0 _\cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 newCHARACTER\cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .\cf9 \cb1 \CocoaLigature1 ALLCHR\cf4 \cb6 \CocoaLigature0 .vcf \cf10 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 --phyml \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/miniconda/ETE/ext_apps-latest/bin/\cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 phyml --threads 2 --prefix \cf3 Phased_Imputed\cf10 _chi_tri_bel_ros_num.\cf9 \cb1 \kerning1\expnd0\expndtw0 ALLCHR\cf10 \cb2 \expnd0\expndtw0\kerning0
.phyml_bionj --windType sites -w 50 --model GTR --optimise n") | sbatch
\f0\b \cf23 \cb22 \
\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 \
\
\pard\pardeftab720\partightenfactor0
\cf9 \cb2 \expnd0\expndtw0\kerning0
#TOPOLOGY WEIGHTING\cf24 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf10 \cb2 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf3 twisst\cf10 '; echo '#SBATCH -n \cf3 1\cf10 '; echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf3 python \cf14 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/\cf3 \expnd0\expndtw0\kerning0
\CocoaLigature1 twisst-0.2/twisst.py -t \cf14 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/results/\cf3 \expnd0\expndtw0\kerning0
\CocoaLigature1 Phased_Imputed_chi_tri_bel_ros_num.\cf9 \cb1 \kerning1\expnd0\expndtw0 ALLCHR\cf3 \cb2 \expnd0\expndtw0\kerning0
.phyml_bionj
\f0\b \cf19 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 .trees.gz
\f1\b0 \cf14  \cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 -w \cf14 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/results/\cf3 \expnd0\expndtw0\kerning0
\CocoaLigature1 Phased_Imputed_chi_tri_bel_ros_num.\cf9 \cb1 \kerning1\expnd0\expndtw0 ALLCHR\cf3 \cb2 \expnd0\expndtw0\kerning0
.phyml_bionj.weights.tsv -g cyd -g \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 tim_tri\cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1  -g \cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 mel_bel \cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 -g ros\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0  \cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1 -g num --groupsFile \cf14 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_Twisst/results/\cb6 new_Pop_Data2.txt\cf3 \cb2 \expnd0\expndtw0\kerning0
\CocoaLigature1  --outgroup num\cf10 ") | sbatch
\f0\b \cf24 \cb1 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf25 \cb2 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0
\cf14 \cb6 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf24 \cb1 \CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf13 \cb12 \expnd0\expndtw0\kerning0
\
\
\
}