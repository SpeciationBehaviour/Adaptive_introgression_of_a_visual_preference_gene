# Adaptive_introgression_of_a_visual_preference_gene

Scripts and data for Rossi et al. "Adaptive introgression of a visual preference gene"
---



## Data

A. Behavioural data files:

1. 'rossi_all_live_female_data_by_ind.csv': Male preference data for  H. melpomene, H. cydno, H. timareta , H. cydno X H. timareta F1 hybrids, and H. cydno X H. timareta backcross hybrids assayed in Colombia in trials with a H. timareta female and a H. cydno female.

2. 'rossi_all_painted_female_data_by_ind.csv': Male preference data for  H. cydno, H. timareta , H. cydno X H. timareta F1 hybrids, and H. cydno X H. timareta backcross hybrids assayed in Colombia in trials with a a red-painted H. cydno female and a (control) transparent painted female.

3. 'merrill_pure_data_for_Rossi.csv':  Male preference data for  H. cydno and H. melpomene individuals assayed in Panama as described and previously published in Merrill et al 2019 (for comparison).

4. 'merrill_data_for_rossi.csv':  Male preference data for  H. cydno and H. melpomene backcross individuals assayed in Panama as described and previously published in Merrill et al 2019 (for comparison). 


B. Population genomic data:

Whole genome resequencing data that have not already been published will be deposited in ENA upon acceptance for publication

1A. 'gene_info.txt':

1B. 'chromo_gene_info.txt':

2. 'crossover_rec_rates_Davey2017.tsv':

3. 'fd_TRI.BEL_AUTOSOMES.20000_300.csv':

4. 'fst_dxy.tristero_ccydno_m2000ALL.ALLCHR.csv.gz':

5A. 'tim.tri.pop1_chr1.sweepfinder.out':

5B. 'tim.tri.pop1_chr18.sweepfinder.out':

6. 'Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.data.tsv':

7. 'Phased_Imputed_chi_thx_ama_ros_num.chr18.phyml_bionj.weights.tsv':

8. 'Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.data.tsv':

9. 'Phased_Imputed_chi_tri_bel_ros_num.chr18.phyml_bionj.weights.tsv':


C. Transcriptomic data:

RNA-seq and Iso-Seq data that have not already been publishedData will be deposited in ENA upon acceptance for publication

1. 'Brains_newparam_genecounts.txt':


D. CRISPR behavioural data files:

...

5. Rossi_crispr_females_and_othermales_behavioural_data.txt

E. Patternize analysis

1. 'data_sample_id_list.csv': information about individuals used for patternize analysis

2. 'data_pattern_area.csv': color pattern areas quantifications with patternize

3. 'data_gwd.csv': Gower dissimilarities measures between color patterns - linked to patternize analysis


F. Miscellaneous

1. 'CRISPR_table_survival_devtime.txt': survival statistics and developmental times related to CRISPR experiments




## Code

1. "Rossi_et_behavioural_preference_analysis.R" R scripts to perform analysis on males preference data collected in Colombia (as well as re-analysis of data previously published by Merrill et al. 2019 for effect size comparison). Requires  packages `lme4` and `emmeans`.


B. Population genomic analyses:

1. 'POPGEN1_align_and_variant_calling_GATK.sh': align whole genome re-sequencing data from different species to the H. melpomene genome and infer variants (SNPs)

2. 'POPGEN2_admixture_proportions(fd)_analysis.sh': calculate admixture proportions between H. melpomene and H. timareta across the genome

3. 'POPGEN3_twisst_analysis.sh': perform Twisst (phyogenetic) analysis 

4. 'POPGEN4_FST_and_dxy.sh':

5. 'POPGEN5A_prepare_vcf_files_for_SweepFinder(SF).sh': align hole genome re-sequencing data from different species to the H. melpomene genome and infer variants (SNPs) to use in selective sweep analysis

6. 'POPGEN5B_create_SF2_recombinationfile.py': generate recombination file used in SweepFinder2 analysis (more information at:https://github.com/markusmoest/SelectionHeliconius)

7. 'POPGEN5C_createSweepFinderInput_polarizedonly.py': perform selective sweep analysis (more information at:https://github.com/markusmoest/SelectionHeliconius)

C. Transcriptomic analyses:

1. 'RNA1_trimRNAreads_trimgalore.sh':

2. 'RNA2_mapping_RNAreads_STAR.sh':

3. 'RNA3_gene_and_exon_counts_Htseq.sh':

4. 'RNA4_Differential_gene_expression.R':

5. 'RNA5_differential_exon_usage.R':

6. 'RNA6_forASE_markduplicates_and_splittrim_RNAreads.sh':

7. 'RNA7_forASE_call_and filter_SNPS_from_RNAreads.sh':

8. 'RNA8_forASE_call_SNPs_gDNAreads_parents_of_F1.sh':

9. 'RNA9_runASEreader_F1.sh':

10. 'RNA10_allele_specific_analysis.R':

11. 'RNA11_ISOseq_reads.sh':

D. CRISPR behavioural analyses

...


E. Miscellaneous analyses

1. 'H. melpomene_ color_vision_model.R': run color vision model on reflectances acquired from natural and artificially colored forewing bands

2. 'patternize_gower_dissimilarity_measures.R': calculate Gower dissimilarity measures on color patterns analyzed with patternize




## Figures

1. 'Plot_Proportion_Stats_FINAL_GITHUB.R': script used to plot different figures (all those with proportion data)

...Main figures


## Supplementary Figures

1.

2. Supplementary_Figure_2_chr1_popgen.R

3. Supplementary_Figure_3_TWISST.R

4. Supplementary_Figure_4_sweeps.R

5. Supplementary_Figure_5_PCA.R

6. Supplementary_Figure_6_diff_expression_across_QTL.R

7. Supplementary_Figure_7_survival_development_CRISPR.R

8. Supplementary_Figure_9_all_malesANDfemales_flyORfeed.R

9. Supplementary_Figure_10_patternize.R
