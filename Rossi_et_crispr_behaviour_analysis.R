# Analysis of CRISPR behavioural data data for Rossi et al. 'Adaptive introgression of a visual preference gene'.

# R. M. Merrill July 2023

# Analysis of behavioural data collected in Munich in 2022.

# R. M. Merrill July 2023

# Load required packages:

library(lme4)
library(emmeans)

## 1. Drop test data

# Load data:

drop_data <- read.csv("Rossi_drop_test_data.txt",header=TRUE, sep="")


# Count number KO, ND and WT tested and that fail to fly on all 5 attempts and print output:

total_KO <- nrow(drop_data[drop_data$type == "KO",])
total_ND <- nrow(drop_data[drop_data$type == "ND",])
total_WT <- nrow(drop_data[drop_data$type == "wt",])

num_KO_fail <- nrow(drop_data[drop_data$type == "KO" & drop_data$number_no == 5,])
num_ND_fail<- nrow(drop_data[drop_data$type == "ND" & drop_data$number_no == 5,])
num_WT_fail <- nrow(drop_data[drop_data$type == "wt" & drop_data$number_no == 5,])

num_KO_pass <- total_KO - num_KO_fail
num_ND_pass <- total_ND - num_ND_fail
num_WT_pass <- total_WT - num_WT_fail

print(paste0("total number KO tested: ", total_KO))
print(paste0("total number ND tested: ", total_ND))
print(paste0("total number wt tested: ", total_WT))
print(paste0("... "))
print(paste0("total number KO failed: ", num_KO_fail))
print(paste0("total number ND failed: ", num_ND_fail))
print(paste0("total number wt failed: ", num_WT_fail))
print(paste0("... "))
print(paste0("total number KO passed: ", num_KO_pass))
print(paste0("total number ND passed: ", num_ND_pass))
print(paste0("total number wt passed: ", num_WT_pass))


# Use Fisher exact test to test for differences between KO, ND and WT in number that fail drop test:

drop_counts <- as.matrix(c(num_KO_fail, num_KO_pass, num_ND_fail, num_ND_pass, num_WT_fail, num_WT_pass))
dim(drop_counts) <- c(2,3)
fisher.test(drop_counts)

## 2. Optomotor test data

# Load data:

opti_data<-read.csv("Rossi_crispr_optomotor_data.txt",header=TRUE, sep="")

# Count number KO, ND and WT tested and print outcome:

print(paste0("total number KO tested in optimotor : ", nrow(opti_data[opti_data$type == "KO",])))
print(paste0("total number ND tested in optimotor : ", nrow(opti_data[opti_data$type == "ND",])))
print(paste0("total number WT tested in optimotor : ", nrow(opti_data[opti_data$type == "wt",]))) 


# Count number KO, ND and WT tested and passed at 0.2cpd and print output:

print(paste0("total number KO passed at 0.2 : ", nrow(opti_data[opti_data$type == "KO" & opti_data$passed_cpd_0.2 == "yes",])))
print(paste0("total number ND passed at 0.2 : ", nrow(opti_data[opti_data$type == "ND" & opti_data$passed_cpd_0.2 == "yes",])))
print(paste0("total number WT passed at 0.2 : ", nrow(opti_data[opti_data$type == "wt" & opti_data$passed_cpd_0.2 == "yes",]))) 


# Get IDs of KO individuals that failed drop test, and compare to those KO tested (and passed) optimotor.

KO_fail_drop <- drop_data[drop_data$type == "KO" & drop_data$number_no == 5,]$ID
KO_tested_opti<- opti_data[opti_data$type == "KO",]$ID
KO_fail_drop %in% KO_tested_opti

# i.e. 7 KO individuals that failed the drop test were tested in the optomotor (and passed)


## 3. Courtship trial data

# Load data:

crispr_data<-read.csv("Rossi_crispr_behavioural_data.txt",header=TRUE, sep="")


# Exclude data from male '3V', which  did not fly or feed in trials:

crispr_data_corrected <- crispr_data[crispr_data$exp_male_i != '3V',]


# a) Analysis of behavioural data excluding non-flying male (main results).

# Build 'courtship' GLMM with binomial error structure.  The dependent variable is the number of minutes courting by experimental vs control male, and experimental type (KO = knockout or ND = non-deletion) is included as a fixed factor. Experimental male id is included as a random effect to account for over-dispersion. 

full_courtship_model_corrected <-glmer(cbind(exp_court,  wt_court) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data_corrected)
summary(full_courtship_model_corrected)

# and null GLMM:

null_courtship_model_corrected<-glmer(cbind(exp_court,  wt_court) ~ 1 +  (1|exp_male_id), family="binomial", data=crispr_data_corrected)


# ... compare full and null model with likelihood ratio test:

anova(full_courtship_model_corrected, null_courtship_model_corrected)


# Get confidence limits with emmeans. n.b. emmean is the estimate, asymp.LCL and asymp.UCL are the lower and upper CI (use regrid #to get logistic regression values).

emmeans(object = full_courtship_model_corrected,
        specs = ~exp_male_type,
        regrid = "response")
        

# Get effect size (i.e. difference between KO and ND means) with emmeans:

summary(emmeans(object = full_courtship_model_corrected,
                specs = pairwise~exp_male_type,
                regrid = "response")$contrasts, infer=T)
                
                
# Non-courtship data (i.e. minutes flying and feeding)

# Build 'non-courtship' GLMM with binomial error structure.  The dependent variable is the number of minutes flying or feeding by experimental vs control male, and experimental type (KO = knockout or ND = non-deletion) is included as a fixed factor. Experimental male id is included as a random effect to account for overdispersion.

full_non_courtship_model_corrected <-glmer(cbind(exp_fly_feed,  wt_fly_feed) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data_corrected)
summary(full_non_courtship_model_corrected)

# ...  and null model:

null_non_courtship_model_corrected <-glmer(cbind(exp_fly_feed,  wt_fly_feed) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data_corrected)

# ... compare full and null model with likelihood ratio test:

anova(full_non_courtship_model_corrected, null_courtship_model_corrected)

# Get confidence limits with emmeans. n.b. emmean is the estimate, asymp.LCL and asymp.UCL are the lower and upper CI (use regrid #to get logistic regression values).

emmeans(object = full_non_courtship_model_corrected,
        specs = ~exp_male_type,
        regrid = "response")
        
# Get effect size (i.e. difference between KO and ND means) with emmeans:

summary(emmeans(object = full_non_courtship_model_corrected,
                specs = pairwise~exp_male_type,
                regrid = "response")$contrasts, infer=T)
                
# b) Repeat analysis of behavioural data including non-flying male.

# Build 'courtship' GLMM with binomial error structure.  The dependent variable is the number of minutes courting by experimental vs control male, and experimental type (KO = knockout or ND = non-deletion) is included as a fixed factor. Experimental male id is included as a random effect to account for over-dispersion. 

full_courtship_model<-glmer(cbind(exp_court,  wt_court) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data)


# ... and null GLMM:

null_courtship_model<-glmer(cbind(exp_court,  wt_court) ~ 1 +  (1|exp_male_id), family="binomial", data=crispr_data)   

# ... compare full and null model with likelihood ratio test:

anova(full_courtship_model, null_courtship_model)

# Non-courtship data (i.e. minutes flying and feeding)  

# Build 'non-courtship' GLMM with binomial error structure.  The dependent variable is the number of minutes flying or feeding by experimental vs control male, and experimental type (KO = knockout or ND = non-deletion) is included as a fixed factor. Experimental male id is included as a random effect to account for overdispersion.        

full_non_courtship_model <-glmer(cbind(exp_fly_feed,  wt_fly_feed) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data)

# and null model:

null_non_courtship_model<-glmer(cbind(exp_fly_feed,  wt_fly_feed) ~ exp_male_type +  (1|exp_male_id), family="binomial", data=crispr_data)

# ... compare full and null model with likelihood ratio test:

anova(full_non_courtship_model, null_courtship_model) 
        

