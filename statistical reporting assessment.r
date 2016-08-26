##############################################################################################
# Assess that the analyses in a manuscript have been reported correctly and consistently

# I.e., APA formatting, congruency between test stat, df and p values
# Uses statcheck. See here for annotatd output: http://rpubs.com/michelenuijten/202816

##############################################################################################
# Author: Ian Hussey (ian.hussey@ugent.be)

##############################################################################################
# Clean the workspace
rm(list=ls())

##############################################################################################
## Dependencies
library(statcheck)
library(ggplot2)

##############################################################################################
## Data acquisition

# Export the .docx to .txt
# On Word for Mac, you must choose Other Encoding>"Unicode 7.0 UTF 8.0" 
# so that linebreaks and greek letters are used correctly.

setwd("~/git/Statistical Reporting Assessment/")  # change this to your file's location
text <- readLines("example manuscript.txt")

##############################################################################################
## statcheck  

assessment_of_fully_reported_tests <- statcheck(text, OneTailedTxt = TRUE)  
          # OneTailedTxt checks for presence of statement of one tailed test AND if the p value 
          # for a one tailed test would be correct

list_of_all_p_values <- statcheck(text, AllPValues=TRUE)
          # Lists all p values reported in text, regardless of whether test statistic/df is present
          # Can help catch partially reported tests. Not saved to disk at the moment.

summary_of_assessment_of_fully_reported_tests <- summary(assessment_of_fully_reported_tests)

# plot calculated vs reported to see over/underestimations
plot(assessment_of_fully_reported_tests, APA=FALSE)

##############################################################################################
## write output to disk
sink("statistical reporting assessment.txt")
print("NB Rounding errors can and do occur, and may not represent incorrect reporting")
assessment_of_fully_reported_tests
summary_of_assessment_of_fully_reported_tests
sink()

