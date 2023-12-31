# Adaptive_introgression_of_a_visual_preference_gene

Scripts and data for Rossi et al. "Adaptive introgression of a visual preference gene"
---


## Data

#### A. Behavioural data files:

1. 'rossi_all_live_female_data_by_ind.csv': Male preference data for  H. melpomene, H. cydno, H. timareta , H. cydno X H. timareta F1 hybrids, and H. cydno X H. timareta backcross hybrids assayed in Colombia in trials with a H. timareta female and a H. cydno female.

2. 'rossi_all_painted_female_data_by_ind.csv': Male preference data for  H. cydno, H. timareta , H. cydno X H. timareta F1 hybrids, and H. cydno X H. timareta backcross hybrids assayed in Colombia in trials with a a red-painted H. cydno female and a (control) transparent painted female.

3. 'merrill_pure_data_for_Rossi.csv':  Male preference data for  H. cydno and H. melpomene individuals assayed in Panama as described and previously published in Merrill et al 2019 (for comparison).

4. 'merrill_data_for_rossi.csv':  Male preference data for  H. cydno and H. melpomene backcross individuals assayed in Panama as described and previously published in Merrill et al 2019 (for comparison). 


#### B. Population genomic data:

Whole genome resequencing data that are available at https://www.ebi.ac.uk/ena/browser/view/PRJEB69696

1. 	a) 'gene_info.txt': genes coordinates - genome annotation with scaffolds

	b) 'chromo_gene_info.txt': genes coordinates - chromosomal version

	c) 'genes_in_QTL.txt' : list of genes and predicted functions in the QTL region on chromosome 18

2. 'crossover_rec_rates_Davey2017.tsv': recombination rates from Davey et al. 2017

3.	a) 'fd_TRI.BEL_AUTOSOMES.20000_300.csv': admixture proportion estimates, focal species H. t. tristero and H. m. bellula

	b)'fd.chr18.THX.AMA.20000_300.csv': admixture proportion estimates, focal species H. t. thelxinoe and H. m. amaryllis

4. 'fst_dxy.tristero_ccydno_m2000ALL.ALLCHR.csv.gz': FST and dxy values for H. t. tristero vs. H. c. cydno

5.	a) 'tim.tri.pop1_chr1.sweepfinder.out': composite likelihood ratio (CLR) values for H. t. tristero for chromosome 1

	b) 'tim.tri.pop1_chr18.sweepfinder.out': composite likelihood ratio (CLR) values for H. t. tristero for chromosome 18

6. 'Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.data.tsv': tree data for twisst analysis - introgression between H. t. thelxinoe and H. m. amaryllis

7. 'Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.weights.tsv': topology weightings  linked to file:  'Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.data.tsv'

8. 'Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.data.tsv': tree data for twisst analysis - introgression between H. t. tristero and H. m. bellula

9. 'Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.weights.tsv': topology weightings  linked to file:  'Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.data.tsv'

10.	a) 'LD_Hmel218_chi.hap.ld': LD data for H. c. chioneus at the QTL

	b) 'LD_Hmel218_cyd.hap.ld': LD data for H. c. cydno at the QTL

	c) 'LD_Hmel218_ros.hap.ld': LD data for H. m. rosina at the QTL

	d) 'LD_Hmel218_roschi.hap.ld': LD data for H. m. rosina and H. c. chioneus at the QTL

	e) 'LD_Hmel218_tri.hap.ld': LD data for H. t. tristero at the QTL

	f) 'LD_Hmel218_tricyd.hap.ld’’: LD data for H. t. tristero and H. c. cydno at the QTL


#### C. Transcriptomic data:

RNA-seq and Iso-Seq data are available at https://www.ebi.ac.uk/ena/browser/view/PRJEB69696

1. 'Brains_newparam_genecounts.txt': gene counts from brain tissue for the different species used in the study: H. m. bellula, H. m. rosina, H. m. amaryllis, H. m. melpomene, H. c. cydno, H. m. chioneus, H. t. tristero


#### D. CRISPR behavioural data files:

1. Rossi_crispr_females_and_othermales_behavioural_data.txt Behavioural data from courtship trials conducted in Munich

2. Rossi_crispr_optomotor_data.txt Data from optomotor trials conducted in Munich

3. Rossi_drop_test_data.txt Data from 'drop tests' conducted in Munich


#### E. Patternize analysis

1. 'data_sample_id_list.csv': information about individuals used for patternize analysis

2. 'data_pattern_area.csv': color pattern areas quantifications with patternize

3. 'data_gwd.csv': Gower dissimilarities measures between color patterns - patternize analysis


#### F. Miscellaneous

1. 'CRISPR_table_survival_devtime.txt': survival statistics and developmental times related for CRISPR experiments


## Code

#### A. Behavioural analyses:

1. "Rossi_et_behavioural_preference_analysis.R" R scripts to perform analysis on males preference data collected in Colombia (as well as re-analysis of data previously published by Merrill et al. 2019 for effect size comparison). Requires  packages `lme4` and `emmeans`.


#### B. Population genomic analyses:

1. 'POPGEN1_align_and_variant_calling_GATK.sh': align whole genome resequencing data from different species to the H. melpomene genome and infer variants (SNPs)

2. 'POPGEN2_admixture_proportions(fd)_analysis.sh': calculate admixture proportions between H. melpomene and H. timareta across the genome

3. 'POPGEN3_twisst_analysis.sh': perform Twisst (phyogenetic) analysis 

4. 'POPGEN4_FST_and_dxy.sh': calculate FST and dxy between H. t. tristero and H. c. cydno

5. 'POPGEN5A_prepare_vcf_files_for_SweepFinder(SF).sh': align whole genome resequencing data from different species to the H. melpomene genome and infer variants (SNPs) to use in the selective sweeps analyses

6. 'POPGEN5B_create_SF2_recombinationfile.py': generate recombination file used in SweepFinder2 analysis (more information at: https://github.com/markusmoest/SelectionHeliconius)

7. 'POPGEN5C_createSweepFinderInput_polarizedonly.py': perform selective sweep analysis (more information at: https://github.com/markusmoest/SelectionHeliconius)

8. 'POPGEN6_LD_analysis.sh’: calculate LD for species or species pairs at the behavioral QTL on chromosome 18

#### C. Transcriptomic analyses:

1. 'RNA1_trimRNAreads_trimgalore.sh': trim adapter and low quality bases from RNA-seq reads

2. 'RNA2_mapping_RNAreads_STAR.sh': map RNA-seq reads reads to H. melpomene genome

3. 'RNA3_gene_and_exon_counts_Htseq.sh': estimate RNA-seq reads mapping to genes and exons

4. 'RNA4_Differential_gene_expression.R': conduct differential gene expression analysis

5. 'RNA5_differential_exon_usage.R': conduct differential exon usage analysis

6. 'RNA6_forASE_markduplicates_and_splittrim_RNAreads.sh': prepare RNA-reads for allele-specific expression (ASE) analysis

7. 'RNA7_forASE_call_and filter_SNPS_from_RNAreads.sh': variant calling on F1 hybrids samples used in ASE analysis

8. 'RNA8_forASE_call_SNPs_gDNAreads_parents_of_F1.sh': variant calling on whole genome resequencing data from the parents of F1 hybrids - ASE analysis

9. 'RNA9_runASEreader_F1.sh': run ASE reader counter (estimate how many RNA-reads map to the different parental alleles)

10. 'RNA10_allele_specific_analysis.R': conduct ASE analysis

11. 'RNA11_ISOseq_reads.sh': analysis of Iso-Seq data

#### D. CRISPR behavioral analyses

1. Rossi_et_crispr_behaviour_analysis.R R scripts to perform analysis on males preference data collected in Munich. Requires  packages `lme4` and `emmeans`.

#### E. Miscellaneous analyses

1. 'H. melpomene_ color_vision_model.R': run Heliconius color vision model on reflectances acquired from natural and artificially colored forewing bands

2. 'patternize_gower_dissimilarity_measures.R': calculate Gower dissimilarity measures on color patterns analyzed with patternize

## Figures

1. 'Plot_Proportion_Stats_FINAL_GITHUB.R': base script used to plot different figures using proportion data

2. 'plot_twisst.R': script from https://github.com/simonhmartin/twisst/ to plot smoothed topology weightings as estimated in Twisst

## Supplementary Figures

1. Supplementary_Figure_2_chr1_popgen.R

2. Supplementary_Figure_3_TWISST.R

3. Supplementary_Figure_4_sweeps.R

4. Supplementary_Figure_5_LD.R (Plot_LD_Heliconius_chr18.R)

5. Supplementary_Figure_6_diff_expression_across_QTL.R 

6. Supplementary_Figure_7_PCA.R

7. Supplementary_Figure_10_survival_development_CRISPR.R

8. Supplementary_Figure_11_all_malesANDfemales_flyORfeed.R

9. Supplementary_Figure_12_patternize.R


