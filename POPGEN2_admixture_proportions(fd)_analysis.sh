{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 CourierNewPS-BoldMT;\f1\fmodern\fcharset0 CourierNewPSMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red255\green255\blue255;\red0\green0\blue0;
\red255\green255\blue255;\red0\green0\blue255;\red127\green127\blue127;\red246\green246\blue246;\red22\green21\blue22;
\red180\green36\blue25;\red244\green244\blue244;\red251\green2\blue255;\red31\green32\blue33;\red27\green31\blue34;
\red127\green0\blue128;\red244\green246\blue249;\red251\green2\blue7;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c100000\c100000\c100000;\csgray\c0;
\csgray\c100000;\cssrgb\c1680\c19835\c100000;\cssrgb\c57046\c57047\c57046;\cssrgb\c97255\c97255\c97255;\cssrgb\c11373\c10980\c11373;
\cssrgb\c76409\c21698\c12524;\cssrgb\c96471\c96471\c96471;\cssrgb\c100000\c25279\c100000;\cssrgb\c16078\c16863\c17255;\cssrgb\c14118\c16078\c18039;
\cssrgb\c57919\c12801\c57269;\cssrgb\c96471\c97255\c98039;\cssrgb\c100000\c14913\c0;}
\paperw11905\paperh16837\margl1440\margr1440\vieww28300\viewh16080\viewkind0
\deftab720
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b\fs24 \cf0 #PREPARE FILES\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf0 #Example with H. t. tristero vcf file\
\pard\pardeftab720\partightenfactor0

\f0\b \cf0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 #bgzip and tabix vcf (variant calling files)\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb3 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip\cf2 \cb3 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf2 \cb3 \expnd0\expndtw0\kerning0
';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip \cf4 \cb5 \CocoaLigature0 tristero\cf6 _ALL\cf4 _filtered_withINVARIANT.vcf\cf2 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ") | sbatch\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf0 #transform from scaffold to chromosomal coordinates (Hmel2.5) if need to\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f1\b0 \cf0 #python script available at #https://github.com/simonhmartin/genomics_general/tree/master/VCF_processing\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 transf
\f1\b0 \cf2 \cb3 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cf7 \kerning1\expnd0\expndtw0 \CocoaLigature0 2\cf2 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf7 \kerning1\expnd0\expndtw0 python vcfChromTransfer.py -v \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/tristero\cf6 _ALL\cf4 _filtered_withINVARIANT.vcf\cf2 .gz\cf7 \cb3 \CocoaLigature1  -t \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd\CocoaLigature1 /\CocoaLigature0 coordinates.txt\CocoaLigature1  >> \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf6 tristero\cb8 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf2 \cb3 ") | sbatch\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf2 \
#coordinates.txt file (no header)\'94\
#Hmel201001o	1	17206585	chr1	1	17206585	+\
#Hmel202001o	1	9045316	chr2	1	9045316	+\
#Hmel203001o	1	21901	chr3	1	21901	+	\
#Hmel203002o	1	32489	chr3	22002	54490	+	\
#Hmel203003o	1	10486938	chr3	54591	10541528	+\
#Hmel204001o	1	9598776	chr4	1	9598776	+\
#Hmel204002o	1	41765	chr4	9598877	9640641	+\
#Hmel204003o	1	21357	chr4	9640742	9662098	+\
#Hmel205001o	1	9908586	chr5	1	9908586	+\
#Hmel206001o	1	14054175	chr6	1	14054175	+\
#Hmel207001o	1	14308859	chr7	1	14308859	+\
#Hmel208001o	1	9320449	chr8	1	9320449	+\
#Hmel209001o	1	8708747	chr9	1	8708747	+\
#Hmel210001o	1	17965481	chr10	1	17965481	+\
#Hmel211001o	1	11759272	chr11	1	11759272	+\
#Hmel212001o	1	16327298	chr12	1	16327298	+\
#Hmel213001o	1	18127314	chr13	1	18127314	+\
#Hmel214001o	1	173669	chr14	1	173669	+\
#Hmel214002o	1	56205	chr14	173770	229974	+	\
#Hmel214003o	1	44886	chr14	230075	274960	+	\
#Hmel214004o	1	8861473	chr14	275061	9136533	+	\
#Hmel214005o	1	37672	chr14	9136634	9174305	+\
#Hmel215001o	1	13129	chr15	1	13129	+	\
#Hmel215002o	1	54417	chr15	13230	67646	+	\
#Hmel215003o	1	10168004	chr15	67747	10235750	+\
#Hmel216001o	1	46230	chr16	1	46230	+\
#Hmel216002o	1	10036885	chr16	46331	10083215	+\
#Hmel217001o	1	14773299	chr17	1	14773299	+\
#Hmel218001o	1	47928	chr18	1	47928	+	\
#Hmel218002o	1	305046	chr18	48029	353074	+\
#Hmel218003o	1	16450716	chr18	353175	16803890	+\
#Hmel219001o	1	16247306	chr19	1	16247306	+	\
#Hmel219002o	1	151938	chr19	16247407	16399344	+\
#Hmel220001o	1	240638	chr20	1	240638	+\
#Hmel220002o	1	32432	chr20	240739	273170	+	\
#Hmel220003o	1	14585564	chr20	273271	14858834	+	\
#Hmel220004o	1	12761	chr20	14858935	14871695	+\
#Hmel221001o	1	13359691	chr21	1	13359691	+\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 #bgzip and tabix again\
\pard\pardeftab720\partightenfactor0

\f1\b0 \cf2 \cb3 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip\cf2 \cb3 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n 
\f0\b \cf0 \cb1 \kerning1\expnd0\expndtw0 3
\f1\b0 \cf2 \cb3 \expnd0\expndtw0\kerning0
';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb1 \kerning1\expnd0\expndtw0 bgzip \cf6 \cb5 \CocoaLigature0 tristero\cb8 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf2 \cb3 ") | sbatch\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf0 \cb1 \CocoaLigature1 #PARSE TOGETHER VCF FILES FROM DIFFERENT POPULATIONS \
#
\f1\b0 (in this case H. numata = outgroup, H. m. bellula and H. t. tristero = sympatric populations,  H. cydno = allopatric population)
\f0\b \
#
\f1\b0 \cf7 parseVCFs.py script available at \cf0 https://github.com/simonhmartin/genomics_general/tree/master/VCF_processing\
\pard\pardeftab720\partightenfactor0
\cf7 \cb3 \expnd0\expndtw0\kerning0
\
(echo '#!/bin/bash'; echo '#SBATCH -J \cb1 \kerning1\expnd0\expndtw0 parseVCF\cb3 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \shad\shadx0\shady-20\shadr0\shado255 \shadc0 5\shad0 ';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb1 \kerning1\expnd0\expndtw0 python parseVCFs.py -i \cf4 \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/cydnos.snps.vcf.gz\cf7 \cb1 \CocoaLigature1  -i \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf6 tristero\cb8 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ALL_withINVARIANT.snps.vcf\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz \cf7 \cb1 \CocoaLigature1 -i \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cf4 bellula\cf9 \cb8 \expnd0\expndtw0\kerning0
\CocoaLigature1 .withINVARIANT_NOINDELS.snps.vcf\cf2 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 .gz \cf7 \cb1 \CocoaLigature1 -i \cb5 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/14_fd/\cb3 numatas\expnd0\expndtw0\kerning0
\CocoaLigature1 .snps.vc\shad\shadx0\shady-20\shadr0\shado255 \shadc0 f.gz
\f0\b \cf10 \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 \shad0  
\f1\b0 \cf4 --skipIndels\cf7 \cb1 \CocoaLigature1  > \cf6 output.geno.triALLbel_Simoncydnos_AUTOSOMES.vcf\cf7 \cb3 \expnd0\expndtw0\kerning0
") | sbatch\cf0 \cb1 \kerning1\expnd0\expndtw0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0

\f0\b \cf2 #remove * (deletions..)
\f1\b0 \
\pard\pardeftab720\partightenfactor0
\cf2 \cb11 \expnd0\expndtw0\kerning0
awk '!/\cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 *\cb11 \expnd0\expndtw0\kerning0
\CocoaLigature1 /' \cb1 \kerning1\expnd0\expndtw0 output.geno.triALLbel_Simoncydnos_AUTOSOMES.vcf\cb11 \expnd0\expndtw0\kerning0
 > \cb1 \kerning1\expnd0\expndtw0 output.geno.triALLbel_Simoncydnos_AUTOSOMES_NOSYMBOL.vcf\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf0 \cb1 \kerning1\expnd0\expndtw0 bgzip\cf2 \cb3 \expnd0\expndtw0\kerning0
'; echo '#SBATCH -n \cb5 \kerning1\expnd0\expndtw0 \CocoaLigature0 1\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cb1  \cb3 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb11 bgzip \cb1 \kerning1\expnd0\expndtw0 output.geno.triALLbel_Simoncydnos_AUTOSOMES_NOSYMBOL.vcf\cb3 \expnd0\expndtw0\kerning0
"\cb1 \kerning1\expnd0\expndtw0 ) \cb3 \expnd0\expndtw0\kerning0
| sbatch\cb11 \
tabix \cb1 \kerning1\expnd0\expndtw0 output.geno.triALLbel_Simoncydnos_AUTOSOMES_NOSYMBOL.vcf\cb5 \CocoaLigature0 .gz\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf4 \
\
\
\pard\pardeftab720\partightenfactor0

\f0\b \cf2 \cb1 \CocoaLigature1 #CALCULATE FD\cf12 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 #
\f1\b0 \cf13 \cb3 \expnd0\expndtw0\kerning0
ABBABABAwindows.py script available at \cf0 \cb1 \kerning1\expnd0\expndtw0 https://github.com/simonhmartin/genomics_general/tree/master/VCF_processing\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \expnd0\expndtw0\kerning0
(echo '#!/bin/bash'; echo '#SBATCH -J \cf13 ABBABABA\cf2 '; echo '#SBATCH -n \cf0 \cb1 \kerning1\expnd0\expndtw0 1\cf2 \cb3 \expnd0\expndtw0\kerning0
';\cb1  \cf7 \cb3  \cf2 echo '#SBATCH -t \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf7  \cf2 echo "\cf13 python ABBABABAwindows.py -g \cf2 \cb1 \kerning1\expnd0\expndtw0 output.geno.triALLbel_Simoncydnos_AUTOSOMES_NOSYMBOL.vcf\cb5 \CocoaLigature0 .gz\cf4  \cf13 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 -f phased -o bar92.TRI_ALL.BEL.SIMONcydnos_AUTOSOMES.20000_300.csv.gz \cf14 -P1 \cf2 \cb8 cyd\cf14 \cb3  -P2 \cf2 \cb8 tim_tri\cf14 \cb3  -P3 \cf2 \cb8 mel_bel\cf14 \cb3  -O num \cf2 \cb8 --popsFile Population_data3.pop.txt \cf14 \cb3 -w 20000 -m 300 -s 5000 \cf15 --minData 0.6\cf14  \cb16 --T \cf17 \cb1 \kerning1\expnd0\expndtw0 2\cf2 \cb3 \expnd0\expndtw0\kerning0
") | sbatch\
\
\
#Example entries in popsFile\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf4 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 24228	mel_bel  \
25231	mel_bel   \
CAM40043	mel_bel        \
CAM40048	mel_bel        \
CAM40049	mel_bel       \
CAM40050	mel_bel        \
CAM40058	mel_bel       \
Cat_HM_CS16	mel_bel\
CAM40013	tim_tri        \
CAM40100	tim_tri       \
R_4266	tim_tri \
R_4303	tim_tri  \
R_4311	tim_tri \
R_4410	tim_tri  \
R_4413	tim_tri  \
R_4523	tim_tri  \
R_4525	tim_tri\
T5939        tim_tri        \
T6331        tim_tri\
chi.CAM25091	cyd \
chi.CAM25137	cyd\
chi.CAM580	cyd\
chi.CAM582	cyd\
chi.CAM585	cyd\
chi.CAM586	cyd\
chi.CJ553	cyd\
chi.CJ560	cyd\
chi.CJ564	cyd\
chi.CJ565	cyd\
#\'85\cf2 \cb5 \
}