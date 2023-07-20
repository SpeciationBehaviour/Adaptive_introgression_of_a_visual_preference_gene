{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier-Bold;\f1\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red38\green38\blue38;\red251\green2\blue255;\red26\green26\blue26;
\red0\green0\blue0;\red74\green0\blue230;\red242\green242\blue242;\red255\green255\blue255;\red64\green11\blue217;
\red255\green255\blue255;\red244\green246\blue249;\red251\green2\blue7;\red0\green0\blue0;\red127\green127\blue127;
\red27\green31\blue34;\red0\green0\blue255;}
{\*\expandedcolortbl;;\csgenericrgb\c14902\c14902\c14902;\cssrgb\c100000\c25279\c100000;\csgenericrgb\c10196\c10196\c10196;
\cssrgb\c0\c0\c0;\cssrgb\c36820\c18688\c92265;\cssrgb\c96078\c96078\c96078;\csgray\c100000;\cssrgb\c32308\c18668\c88227;
\cssrgb\c100000\c100000\c100000;\csgenericrgb\c95686\c96471\c97647;\cssrgb\c100000\c14913\c0;\csgray\c0;\cssrgb\c57046\c57047\c57046;
\csgenericrgb\c10588\c12157\c13333;\cssrgb\c1680\c19835\c100000;}
\margl1440\margr1440\vieww21400\viewh14000\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\b\fs24 \cf2 \expnd0\expndtw0\kerning0
#Count reads mapping to genes and exons with Ht-seq\cf3 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf3 \
\pard\pardeftab720\partightenfactor0
\cf5 #COUNT GENES\
\pard\pardeftab720\partightenfactor0
\cf6 \cb7 #\cb1 \kerning1\expnd0\expndtw0 example with H. c. chioneus
\f1\b0 \cf5 \expnd0\expndtw0\kerning0
\
cd 
\f0\b \kerning1\expnd0\expndtw0  /
\f1\b0 \cb8 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/CP
\f0\b \cb1 /2ndPass\cf9 \cb8 _new\cf5 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/4_HTseq/BRAIN/CP
\f0\b \cf9 _new\cf5 /
\f1\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
  (echo '#!/bin/bash'; echo '#SBATCH -J \kerning1\expnd0\expndtw0 \CocoaLigature0 HTSeq\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -n 1'; echo '#SBATCH -t \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cb10 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cb10 '; \cb1 echo '\kerning1\expnd0\expndtw0 \CocoaLigature0 module load htseq/0.9.1\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "htseq-count -r pos -a 20 -m union --stranded=no -t gene --idattr ID 
\f0\b \kerning1\expnd0\expndtw0  /
\f1\b0 \cb8 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/CP
\f0\b \cb1 /2ndPass\cf9 \cb8 _new
\f1\b0 \cf5 \cb1 /\expnd0\expndtw0\kerning0
\CocoaLigature1 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /Aligned.out.\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 proper.\cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 sam\expnd0\expndtw0\kerning0
\CocoaLigature1  /\kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/Genome_annotations/Hmel2.5.gff3\expnd0\expndtw0\kerning0
\CocoaLigature1  > $i.propergenecounts.txt") | sbatch\
 done\cf4 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 \
#COUNT EXONS \
\pard\pardeftab720\partightenfactor0
\cf6 \cb7 #\cb1 \kerning1\expnd0\expndtw0 example with H. c. chioneus\cf5 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf4 \expnd0\expndtw0\kerning0
cd 
\f0\b \cf12 \kerning1\expnd0\expndtw0  /
\f1\b0 \cf13 \cb8 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf5 \cb1 \CocoaLigature1 CP\cf0 \CocoaLigature0 /2ndPass\cf9 \cb8 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \
individuals=$(\kerning1\expnd0\expndtw0 \CocoaLigature0 ls -d *\expnd0\expndtw0\kerning0
\CocoaLigature1 )    \
for i in $individuals                 \
 do\
  cd \cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/4_HTseq/BRAIN/\cf5 CP
\f0\b \cf9 _new/
\f1\b0 \cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
  (echo '#!/bin/bash'; echo '#SBATCH -J \cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 DeXseq\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf0 echo '#SBATCH -n 1'; \cf5 echo '#SBATCH -t \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf4  \cf14 \cb10 echo '#SBATCH -\kerning1\expnd0\expndtw0 \CocoaLigature0 w \cf0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 cruncher\cf14 \cb10 '; \cf4 \cb1 echo "\cf5 python \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/11_DeXseq_isoforms/DEXSeq-master/inst/python_scripts\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /dexseq\up5 _\up0 count.py -p yes \cf0 -r name \cf5 -s no \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/
\f0\b \cf9 11_DeXseq_isoforms
\f1\b0 \cf5 /annotation/\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 Hmel2.5.DEXSeq.chr.gff 
\f0\b \cf12 \kerning1\expnd0\expndtw0  /
\f1\b0 \cf13 \cb8 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/3_STAR/BRAIN/
\f0\b \cf5 \cb1 \CocoaLigature1 CP\cf0 \CocoaLigature0 /2ndPass\cf9 \cb8 _new\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 /
\f1\b0 \cf0 $i\kerning1\expnd0\expndtw0 \CocoaLigature0 /Aligned.out.\cf15 \cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 proper.\cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 sam\cf5 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf0 $i.exons\cf5 .txt\cf4 ") | sbatch\cf15 \
 \cf4 done\
\pard\pardeftab720\partightenfactor0

\f0\b \cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\
\pard\pardeftab720\partightenfactor0
\cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 #make tables\
#GENE COUNTS\
\pard\pardeftab720\partightenfactor0
\cf6 \cb7 #\cb1 \kerning1\expnd0\expndtw0 example with H. c. chioneus
\f1\b0 \cf5 \cb10 \expnd0\expndtw0\kerning0
\
cd \cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/4_HTseq/BRAIN/CP
\f0\b \cf9 _new
\f1\b0 \cf5 \cb10 \
#remove slurm.out\expnd0\expndtw0\kerning0
\CocoaLigature1 \
FILES=$(ls -t -v *\cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 genecounts\cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 .txt | tr '\\n' ' ');\
awk 'NF > 1\{ a[$1] = a[$1]"\\t"$2\} END \{for( i in a ) print i a[i]\}' $FILES > merged_htseq_CP
\f0\b \cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 _new
\f1\b0 \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 _genecounts.txt\
#download file to laptop:\
\kerning1\expnd0\expndtw0 \CocoaLigature0 \
#header:\expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f0\b \cf5 #gene_id	CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 240
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 30
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 82
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 94
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 98\cf5 \cb1 \CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #removed from file:\cf5 \cb10 \expnd0\expndtw0\kerning0
	\cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf0 #\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 __no_feature	1886597	2458114	1935199	1843267	1777380\cf0 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
#__ambiguous	108279	164073	126105	119259	121668		 \
#__too_low_aQual	0	0	0	0	0	                                   \
#\cf2 \expnd0\expndtw0\kerning0
__not_aligned	0	0	0	0	0\cf0 \kerning1\expnd0\expndtw0 \
#__alignment_not_unique	785833	1127187	861734	809273	769155
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf5 \
\
#EXONS\
\pard\pardeftab720\partightenfactor0
\cf6 \cb7 #\cb1 \kerning1\expnd0\expndtw0 example with H. c. chioneus
\f1\b0 \cf5 \cb10 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 cd \cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/4_HTseq/BRAIN/CP
\f0\b \cf9 _new
\f1\b0 \cf5 \cb10 \
#remove slurm.out\expnd0\expndtw0\kerning0
\CocoaLigature1 \
FILES=$(ls -t -v *\cf16 \cb1 exons.\cb10 txt\cf5  | tr '\\n' ' ');\
awk 'NF > 1\{ a[$1] = a[$1]"\\t"$2\} END \{for( i in a ) print i a[i]\}' $FILES > merged_DEXseq_\cf13 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 CP
\f0\b \cf9 _new
\f1\b0 \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 _exoncounts.txt\
\pard\pardeftab720\partightenfactor0
\cf5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
#add header:
\f0\b \cf9 \cb8 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 #exon_id CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 240
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 30
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 82
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 94
\f1\b0 \cf13   
\f0\b \cf5 \cb10 \expnd0\expndtw0\kerning0
\CocoaLigature1 CP_\cf9 \cb8 \kerning1\expnd0\expndtw0 \CocoaLigature0 98\
#remove lines\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf9 \expnd0\expndtw0\kerning0
_notaligned	0	0	0	0	0\cf0 \cb1 \CocoaLigature1 \
_ambiguous_readpair_position	0	0	0	0	0\
_ambiguous	92864	142772	109272	104222	106951	\
\
\
}