{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;\f1\fmodern\fcharset0 Courier-Bold;}
{\colortbl;\red255\green255\blue255;\red251\green2\blue7;\red244\green246\blue249;\red0\green0\blue0;
\red0\green0\blue255;\red10\green23\blue36;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;
\red127\green0\blue128;\red26\green26\blue26;\red64\green11\blue217;\red0\green0\blue0;\red21\green23\blue26;
\red26\green26\blue26;\red47\green180\blue29;\red203\green35\blue57;\red38\green38\blue38;\red242\green242\blue242;
\red252\green252\blue254;}
{\*\expandedcolortbl;;\cssrgb\c100000\c14913\c0;\cssrgb\c96471\c97255\c98039;\cssrgb\c0\c0\c0;
\cssrgb\c1680\c19835\c100000;\cssrgb\c3529\c12157\c18824;\cssrgb\c100000\c100000\c100000;\cssrgb\c14118\c16078\c18039;\csgray\c100000;
\cssrgb\c57919\c12801\c57269;\cssrgb\c13333\c13333\c13333;\cssrgb\c32308\c18668\c88227;\csgray\c0;\cssrgb\c10588\c12157\c13725\c4706;
\csgenericrgb\c10196\c10196\c10196;\cssrgb\c20238\c73898\c14947;\cssrgb\c84314\c22745\c28627;\cssrgb\c20000\c20000\c20000;\cssrgb\c96078\c96078\c96078;
\cssrgb\c99216\c99216\c99608;}
\paperw11905\paperh16837\margl1440\margr1440\vieww28040\viewh15800\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0

\f1\b \cf4 #Isoseq3 \cf5 \
\pard\pardeftab720\partightenfactor0

\f0\b0 \cf4 #pipeline at: https://github.com/PacificBiosciences/IsoSeq_SA3nUP/wiki/Tutorial:-Installing-and-Running-Iso-Seq-3-using-Conda\cf5 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b \cf6 \cb7 \
#(need Anaconda)
\f0\b0 \cf5 \cb3 \
\pard\pardeftab720\partightenfactor0
\cf4 source activate anaCogent5.2\
\cf5 \
\pard\pardeftab720\partightenfactor0

\f1\b \cf5 #CCS (generate circular consensus sequence for each ZMW)
\f0\b0 \cf4 \
\
\pard\pardeftab720\partightenfactor0
\cf8 \
#Example with H. melpomene\
\pard\pardeftab720\partightenfactor0
\cf4 cd \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/melpomene\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J \cb3 ccs\cb1 '; echo '#SBATCH -n 1'; echo '#SBATCH -t 6-
\f1\b \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 2
\f0\b0 3:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo '#SBATCH -\cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 p 
\f1\b prevail
\f0\b0 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cb3 ccs \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/PacBio_RNA_raw_reads_2019/X201SC19100524-Z01-F001_1_20191202/rawdata/R126_203_186_227/m54222_191126_074137.subreads.bam m54222_191126_074137\cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .ccs.bam --min-rq 0.9\cb1 ") | sbatch\
\pard\pardeftab720\partightenfactor0
\cf2 \cb3 \
\pard\pardeftab720\partightenfactor0

\f1\b \cf5 #Primers and barcode removal \cf10 \
#NOVOGENE PRIMERS
\f0\b0 \cf8 \
\pard\pardeftab720\partightenfactor0
\cf11 \cb7 #>primer_5p\cb1 \uc0\u8232 \cb7 #AAGCAGTGGTATCAACGCAGAGTACATGGG\cb1 \uc0\u8232 \cb7 #>primer_3p\cb1 \uc0\u8232 \cb7 #GTACTCTGCGTTGATACCACTGCTT\
\pard\pardeftab720\partightenfactor0

\f1\b \cf10 \cb3 \
\pard\pardeftab720\partightenfactor0

\f0\b0 \cf8 #Example with H. melpomene\cf5 \cb1 \
(echo '#!/bin/bash'; echo '#SBATCH -J \cf8 \cb3 lima\cf5 \cb1 '; echo '#SBATCH -n 1'; \cf4 echo '#SBATCH -t \cf12 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 2\cf4 3:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; \cf5 echo "\cf8 \cb3 lima \cf11 \cb7 --isoseq \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 melpomene
\f0\b0 \cf13 /m54222_191126_074137.ccs.bam\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf13 /Francesco_primers.fasta /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf13 /m54222_191126_074137.fl.\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 bam\cf5 \cb1 ") | sbatch\cf2 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\
\pard\pardeftab720\partightenfactor0

\f1\b \cf5 #\cb1 Remove polyA tails and artificial concatemers\cf4 \
\pard\pardeftab720\partightenfactor0

\f0\b0 \cf8 \cb3 #Example with H. melpomene
\f1\b \cf10 \
\pard\pardeftab720\partightenfactor0

\f0\b0 \cf4 \cb1 (echo '#!/bin/bash'; echo '#SBATCH -J \cf8 \cb3 refine\cf4 \cb1 '; echo '#SBATCH -n 1'; echo '#SBATCH -t \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "
\f1\b \cb14 isoseq3 refine
\f0\b0 \cf8 \cb3  \cf11 \cb7 --require-polya \cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf4 /\cf13 m54222_191126_074137.fl.NEB_Clontech_3p--primer_5p.bam\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf4 /Francesco_primers.fasta\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  \cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf4 /\cf13 m54222_191126_074137\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .flnc.bam\cf5 \cb1 ") | sbatch\
\pard\pardeftab720\partightenfactor0

\f1\b \cf4 \
\
\
\pard\pardeftab720\partightenfactor0
\cf4 \cb3 #\cb1 Mapping reads to the reference genome\cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0

\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 #Example with H. melpomene
\f1\b \cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
#Transform in fastq format
\f0\b0 \cf15 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
(echo '#!/bin/bash'; echo '#SBATCH -J samtools\cf4 '\cf15 ; \cf4 echo '#SBATCH -n 1';echo '#SBATCH -t \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf15  \cf4 echo '\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 module load samtools/1.4.1\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 ';\cf15  echo "
\f1\b \cf2 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools 
\f0\b0 \cf11 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 fastq
\f1\b \cf2 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0  
\f0\b0 \cf13 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/\cf4 TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf13 /m54222_191126_074137\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .flnc.bam \cf11 \cb7 | gzip - >
\f1\b \cf2 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0  
\f0\b0 \cf4 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf4 /\cf13 m54222_191126_074137.flnc.\cf11 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 fastq.gz\cf15 \cb1 ") | sbatch\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0

\f1\b \cf4 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0
\cf6 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 #Map with Minimap
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J \cf8 \cb3 minimap2\cf4 \cb1 '; echo '#SBATCH -n 1'; echo '#SBATCH -t \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 23:59:59\cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 '; echo "\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/18_minimap2/minimap2/
\f1\b \cf16 minimap2 
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 -ax splice:hq \cf0 \cb1 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/Genome_assemblies/Melpomene/Heliconius_melpomene_melpomene_Hmel2.5.scaffolds.fa\cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1  /\cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/TRIMMED/
\f1\b \cf12 melpomene
\f0\b0 \cf4 /\cf13 m54222_191126_074137.flnc.\cf11 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 fastq.gz\cf8 \cb3  \cf17 >\cf8  \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /
\f1\b \cf12 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .sam\cf4 \cb1 "\cf5 ) | sbatch\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardeftab720\pardirnatural\partightenfactor0

\f1\b \cf6 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0
\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardeftab720\pardirnatural\partightenfactor0
\cf0 \cb1 \CocoaLigature1 \
#Assemble transcripts with Stringtie 
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\
\pard\pardeftab720\partightenfactor0
\cf8 #Example with H. melpomene
\f1\b \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
#Sort SAM files\
\pard\pardeftab720\partightenfactor0

\f0\b0 module load samtools/1.4.1
\f1\b \
cd 
\f0\b0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /\cf15 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 \
\pard\pardeftab720\partightenfactor0

\f1\b \cf4 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 samtools sort\cf2  \cf12 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .sam
\f1\b \cf2 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0  >> \cf12 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf15 \cb1 sorted.bam\
\pard\pardeftab720\partightenfactor0
\cf18 \cb19 samtools index 
\f1\b \cf12 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf15 \cb1 sorted.bam
\f1\b \cf0 \kerning1\expnd0\expndtw0 \
\pard\pardeftab720\partightenfactor0
\cf10 \cb3 \expnd0\expndtw0\kerning0
\
#Use Stringtie
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f1\b \cf11 \cb7 stringtie
\f0\b0 \cf4 \cb1 '; echo '#SBATCH -n 1'; echo "\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/Stringtie/stringtie/
\f1\b \cf11 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 stringtie
\f0\b0  \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /
\f1\b \cf12 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf15 \cb1 sorted.bam\cf11 \cb7  
\f1\b \cb20 -o 
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /
\f1\b \cf12 melpomene_flnc\cf11 \cb20 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gtf
\f0\b0 \cf4 \cb1 ") | sbatch\
\
\pard\pardeftab720\partightenfactor0

\f1\b \cf10 \cb3 #or Stringtie2
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb1 \expnd0\expndtw0\kerning0
\CocoaLigature1 (echo '#!/bin/bash'; echo '#SBATCH -J 
\f1\b \cf11 \cb7 stringtie
\f0\b0 \cf4 \cb1 '; echo '#SBATCH -n 1'; echo "\cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/Stringtie/stringtie2/
\f1\b \cf11 \cb7 \expnd0\expndtw0\kerning0
\CocoaLigature1 stringtie/stringtie
\f0\b0  \cf8 \cb3 -L\cf11 \cb7  
\f1\b \cb20 -o 
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /
\f1\b \cf12 melpomene_flnc
\f0\b0 \cf13 .stringtie2
\f1\b \cf11 \cb20 \expnd0\expndtw0\kerning0
\CocoaLigature1 .gtf 
\f0\b0 \cf13 \cb9 \kerning1\expnd0\expndtw0 \CocoaLigature0 /data/home/wolfproj/wolfproj-06/100_NEW_ANALYSES_2020/11_Iso_Seq/
\f1\b \cf12 MAP_MINIMAP2
\f0\b0 \cf13 /
\f1\b \cf12 melpomene
\f0\b0 \cf13 /
\f1\b \cf12 melpomene_flnc
\f0\b0 \cf8 \cb3 \expnd0\expndtw0\kerning0
\CocoaLigature1 .\cf15 \cb1 sorted.bam\cf4 ") | sbatch\
}