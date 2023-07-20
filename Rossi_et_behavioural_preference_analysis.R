# Analysis of male preference data for Rossi et al. 'Adaptive introgression of a visual preference gene'.

# R. M. Merrill July 2023

# Analysis of preference data collected in Colombia. In addition re-analysis of data from Merrill et al. (2019) 'Genetic dissection of assortative mating' for comparason of effect sizes.

# Load required packages:
library(lme4)
library(emmeans)

## 1. Live female data

# a) Analysis of pure species data

# Load data:

individual_live_female_data <- read.csv("rossi_all_live_female_data_by_ind.csv")


# Modify live female preference data frame to include only data from pure species (i.e. H. cydno "CC", H. melpomene "MBC" and H. timereta "TTC"), and check levels:

l5<-individual_live_female_data[!individual_live_female_data$type%in%("CCxTTC"),]
pure_lf<-l5[!l5$type%in%("CCx(CCxTTC)"),]
levels(factor(pure_lf$type))


# Build GLMM and determine effect sizes for pure species. n.b. GLMMs includes male ID as an individual level random factor, to account for over-dispersion (see for example, Elston et al 2001 Parasitology):

full_species_model_lf <- glmer(cbind(court_red, court_white) ~ type + (1|Male_ID), family = binomial, data = pure_lf)
null_species_model_lf <- glmer(cbind(court_red, court_white) ~ 1 + (1|Male_ID), family = binomial, data = pure_lf)
summary(full_species_model_lf)
anova(full_species_model_lf, null_species_model_lf, test="LRT")


# Get effect size (i.e. difference between population means) with emmeans.

summary(emmeans(object = full_species_model_lf,
                specs = pairwise~type,
                regrid = "response")$contrasts, infer=T)

                
# Check how many individuals have associated behavioral data:

pure_lf$total_court <- pure_lf$court_red + pure_lf$court_white
pure_lf_respond <- pure_lf[pure_lf$total_court > 0,]
rownames(pure_lf_respond) <- seq(length=nrow(pure_lf_respond))
print(paste("Total number of pure males with behavioural data =", nrow(pure_lf_respond)))


# b) Analysis of backcross hybrids

# Modify live female preference data frame to include only data from H.cydno x H. timereta backcross hybrids (i.e. CCx(CCxTTC)), and check levels:

bc_males<-individual_live_female_data[individual_live_female_data$type == "CCx(CCxTTC)",]
rownames(bc_males) <- seq(length=nrow(bc_males))
levels(factor(bc_males$type))


# Reduce data to only those individuals with behavioral data (i.e. those that courted either H. cydno or H. timereta across all trials)

bc_males$total_court <- bc_males$court_red + bc_males$court_white
bc_males_respond <- bc_males[bc_males$total_court > 0,]
rownames(bc_males_respond) <- seq(length=nrow(bc_males_respond))
print(paste("Number of backcross males with behavioural data =", nrow(bc_males_respond)))


# Build GLMM for effects of genotype at QTL peaks (see Merrill et al 2019) on chromosomes 1 and 18 on male preference. This uses a 'reduced data' set of only those genotyped at chr1 and chr18. n.b. GLMMs includes male ID as an individual level random factor, to account for overdispersion, as above.

bc_genotyped_at_ch1 <- bc_males_respond[bc_males_respond$chr1_geno%in%c("cyd/cyd","cyd/tri"),]
bc_genotyped_at_ch1_and_18 <- bc_genotyped_at_ch1[bc_genotyped_at_ch1$chr18_geno%in%c("cyd/cyd","cyd/tri"),]
print(paste("Number of backcross males with behavioural data and genotyped at chr 1 and chr18 =", nrow(bc_genotyped_at_ch1_and_18)))

model_ch1_and_18 <- glmer(cbind(court_red, court_white) ~ chr1_geno + chr18_geno + (1|Male_ID), family = binomial, data = bc_genotyped_at_ch1_and_18)
summary(model_ch1_and_18 )


# Determine significance with LRTs after dropping each locus  in turn:

no_1_lf <- glmer(cbind(court_red, court_white) ~ chr18_geno  + (1|Male_ID), family = binomial, data = bc_genotyped_at_ch1_and_18)
anova(model_ch1_and_18, no_1_lf, test="LRT")
no_18_lf <- glmer(cbind(court_red, court_white) ~ chr1_geno +  (1|Male_ID), family = binomial, data = bc_genotyped_at_ch1_and_18)
anova(model_ch1_and_18, no_18_lf, test="LRT")

# Get affect sizes using emmeans:

summary(emmeans(object = model_ch1_and_18,
                specs = pairwise~chr1_geno,
                regrid = "response")$contrasts, infer=T)

summary(emmeans(object = model_ch1_and_18,
                specs = pairwise~chr18_geno,
                regrid = "response")$contrasts, infer=T)
                

# Build GLMM to test the effect of chromosome 18, using all individuals tested (and responding), inferring genotype at QTL on chromosome from recorded genotype at regucalcin1 and the  optix loci. First, make new vector for qtl genotype: This assumes genotype at regucalcin1 (= chr18_geno, i.e. at peak of chromosome 18 QTL identified by Merrill et al 2019), unless no data (i.e. genotyping failed, and chr18_geno = NA) then assumes same genotype as at optix, which is physically close. 

bc_males_respond$QTL18 <- bc_males_respond$redYN

# Determine those with mismatch between regucalcin genotype (chr18_geno) and optix (redYN):
mismatched_red_males <- bc_males_respond[which(bc_males_respond$chr18_geno == "cyd/cyd" & bc_males_respond$QTL18 == "Y"),]
mismatched_non_red_males <- bc_males_respond[which(bc_males_respond$chr18_geno == "cyd/tri" & bc_males_respond$QTL18 == "N"),]
# Update data frame to take into account these mismatches:
bc_males_respond[bc_males_respond$Male_ID %in% mismatched_red_males$Male_ID,]$QTL18 <- "N"
bc_males_respond[bc_males_respond$Male_ID %in% mismatched_non_red_males$Male_ID,]$QTL18 <- "Y"

# Determine number recombination bc males at QTL (i.e. between regucalcin and optix) and total number of bc males genotyped at regucalcin:
Number_recombinants <- nrow(mismatched_red_males) + nrow(mismatched_non_red_males)
Number_bc_males_genotyped <- nrow(bc_males_respond[bc_males_respond$chr18_geno%in%c("cyd/cyd","cyd/tri"),])
print(paste("Number of recombinants at QTL =", Number_recombinants, "of", Number_bc_males_genotyped, "individuals genotyped at regucalcin"))

# Determine number of (responding) males included in analysis:
Number_bc_males_reposponding <- nrow(bc_males_respond)
print(paste("Number of recombinants at QTL =", Number_bc_males_reposponding))

# Run GLMM on updated genotype (QTL18) and determine effect size. n.b. due to warning change optimizer:

full_bc_model_lf <- glmer(cbind(court_red, court_white) ~  QTL18 + (1|Male_ID), family = binomial, data = bc_males_respond,
                          glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 100000)))
summary(full_bc_model_lf)
null_bc_model_lf <- glmer(cbind(court_red, court_white) ~  1 + (1|Male_ID), family = binomial, data = bc_males_respond,
                          glmerControl(optimizer = "bobyqa", optCtrl = list(maxfun = 100000)))
anova(full_bc_model_lf, null_bc_model_lf, test="LRT")


# c) Merrill et al 2019 data for effect size comparison

# Get effect size for pure H. cydno and H. melpomene tested in Panama (Merrill et al 2019):

merrill_pures <- read.csv("merrill_pure_data_for_Rossi.csv", header=T)
full_merrill_pure_model_lf <- glmer(cbind(court_mp, court_cp) ~ Species + (1|ID), family = binomial, data = merrill_pures)
summary(full_merrill_pure_model_lf)
summary(emmeans(object = full_merrill_pure_model_lf,
                specs = pairwise~Species,
                regrid = "response")$contrasts, infer=T)


# Get effect size for H. cydno x H. melpomene backcross hybridstested in Panama (Merrill et al 2019): 
               
merrill_data<-read.csv("merrill_data_for_rossi.csv", header=T)                
full_merrill_bc_model_lf <- glmer(cbind(court_mp, court_cp) ~ geno18 + (1|id), family = binomial, data = merrill_data)
null_merrill_bc_model_lf <- glmer(cbind(court_mp, court_cp) ~ 1 + (1|id), family = binomial, data = merrill_data)
summary(full_merrill_bc_model_lf)
anova(full_merrill_bc_model_lf, null_merrill_bc_model_lf, test="LRT")
summary(emmeans(object = full_merrill_bc_model_lf,
                specs = pairwise~geno18,
                regrid = "response")$contrasts, infer=T)


## 2. Painted females data

# Load data:

individual_painted_female_data <- read.csv("rossi_all_painted_female_data_by_ind.csv")

# a) Pure males

# Get data frame for pure males. i.e. Modify pained female preference data frame to include only data from pure species (i.e. H. cydno "CC", H. melpomene "MBC" and H. timereta "TTC"), and check levels:

pf<-individual_painted_female_data[!individual_painted_female_data$type%in%("CCxTTC"),]
pure_pf<-pf[!pf$type%in%("CCx(CCxTTC)"),]
levels(factor(pure_pf$type))


# Check how many individuals have associated behavioural data:

pure_pf$total_court <- pure_pf$court_red + pure_pf$court_white
pure_pf_respond <- pure_pf[pure_pf$total_court > 0,]
rownames(pure_pf_respond) <- seq(length=nrow(pure_pf_respond))
print(paste("Total number of pure males with behavioural data in trials with painted females =", nrow(pure_pf_respond)))


# Build GLMM and determine effect sizes for pure species tested with painted females. n.b. GLMMs includes male ID as an individual level random factor, to account for overdispersion (as above):

full_species_model_pf <- glmer(cbind(court_red, court_white) ~ type + (1|Male_ID), family = binomial, data = pure_pf_respond)
null_species_model_pf <- glmer(cbind(court_red, court_white) ~ 1 + (1|Male_ID), family = binomial, data = pure_pf_respond)
summary(full_species_model_pf)
anova(full_species_model_pf, null_species_model_pf, test="LRT")

# Get effect size (i.e. difference between population means) with emmeans:
summary(emmeans(object = full_species_model_pf,
                specs = pairwise~type,
                regrid = "response")$contrasts, infer=T)
                
# b) Back cross males:

Reduce data set to only backcross males that repond. Modify pained female preference data frame to include only data from pure species (i.e. H. cydno "CC", H. melpomene "MBC" and H. timereta "TTC"), and check levels:

backcross_pf<-individual_painted_female_data[individual_painted_female_data$type%in%("CCx(CCxTTC)"),]
levels(factor(backcross_pf$type))


# Check how many individuals have associated behavioural data:

backcross_pf$total_court <- backcross_pf$court_red + backcross_pf$court_white
backcross_pf_respond <- backcross_pf[backcross_pf$total_court > 0,]
rownames(backcross_pf_respond) <- seq(length=nrow(backcross_pf_respond))
print(paste("Total number of backcross males with behavioural data in trials with painted females =", nrow(backcross_pf_respond)))


# Build GLMM to test the effect of chromosome 18, using all individuals tested (and responded), inferring genotype at QTL on chromosome from the  optix loci (i.e. forewing colour). 

full_bc_model_pf <- glmer(cbind(court_red, court_white) ~ redYN + (1|Male_ID), family = binomial, data = backcross_pf_respond)
summary(full_bc_model_pf) 


# and test significance with LRT: 

null_bc_model_pf <- glmer(cbind(court_red, court_white) ~ 1 + (1|Male_ID), family = binomial, data = backcross_pf_respond)
anova(full_bc_model_pf, null_bc_model_pf, test="LRT")

# Get effect size (i.e. difference between population means) with emmeans.

summary(emmeans(object = full_bc_model_pf,
                specs = pairwise~redYN,
                regrid = "response")$contrasts, infer=T)





                
