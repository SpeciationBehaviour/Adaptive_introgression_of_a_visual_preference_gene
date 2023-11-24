setwd("/Users/matteo/Desktop/")

library(dplyr)
library(gplots) 
library(ggplot2)

#Need to read other script in order to plot graphs
source("Plot_Proportion_Stats_FINAL_GITHUB.R")
library(emmeans)
library(lme4)

#Read behavioral data
behav<-read.csv("Rossi_crispr_behavioural_data.txt",header=TRUE, sep="") 
behav<-behav[,c(1,2,6,7)]
behav2<-read.csv("Rossi_crispr_females_and_othermales_behavioural_data.txt",header=TRUE, sep="") 
behav2<-behav2[,c(1,3,4,5)]
activity<-rbind(behav, behav2)

#Plot graph
testout_bayes<-plot_proportion_stats(input_data=activity, 
                                     # The data set
                                     type_of_stats="freq_glm_glmer", 
                                     # Provide the brms models
                                     sum_by_col_plot=c("exp_male_id"), 
                                     # Sum by ID for plot
                                     response_col=list(c("exp_fly_feed"),
                                                       c("wt_fly_feed")), 
                                     # Response variable
                                     sub1_col="exp_male_type", 
                                     # First fixed effect in model on heu and lin
                                     sub2_col="", 
                                     # First fixed effect in model on backcross males
                                     sub1_states=c("ND","KO"), 
                                     # Panels from left right
                                     sub2_states = c(), 
                                     # Subset for middle panel into red N/Y
                                     two_sub1_cols_for_stats=c(), 
                                     # Two panels relevant for first model
                                     other_effects_sub1="+(1|exp_male_id)", 
                                     # other fixed and random effects for first model
                                     other_effects_sub2="", 
                                     # other fixed and random effects for second model
                                     #Aesthetics:
                                     output_dir = "/Users/matteo/Desktop/Flyfeed_ALL.png",
                                     sub1_labels=c("ND","KO"), 
                                     # x axis labels
                                     sub2_labels=c(), 
                                     # second x axis labels for males
                                     yaxs_label=substitute(paste("Proportion motor activity by experimental butterfly")), 
                                     # y axis title
                                     dot_size=0.55, 
                                     # N plotted on right
                                     dot_colours=list("#FDBF6F","#FDBF6F"), 
                                     transparency = 0.8,
                                     # Factor to multiply dot sizes with (no understandable numeric meaning)
                                     legend_dots=rev(c(1,2,5,10,20)), 
                                     # Dot colours
                                     dot_colour_legend="white", 
                                     #Legend dot colours
                                     squeeze_legend=1.2,
                                     #Aesthetic value apply to put legend tighter together.
                                     sub_box_yn = F, 
                                     # Boyplot type (in this case weighted by number of observations per ID)
                                     box_whiskers=F, 
                                     # Add no whiskers to boxplots
                                     numb_iterations=300, 
                                     # Number iterations for assembling the points
                                     border_space=0.4, 
                                     # space to left and right side of center that dots can be jittered to
                                     center_space_cat=0.03, 
                                     # distance of backcross dots from center
                                     seedi=42, 
                                     # Seed
                                     verbose=F,
                                     # Do not print comments
                                     show_p_values_plot = c(T,F),
                                     cex_sub1_labels=0.85,
                                     cex_sub1_counts=0.75,
                                     #remove Horizontal line
                                     horiz_0.5=FALSE
) 
