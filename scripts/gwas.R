library(dplyr)
library(bigsnpr)
library(ggplot2)
library(data.table)

# Reading in data
dosage <- snp_attach(dosage_path)                # Load a "bigSNP" object from backing files
ipsych_design <- fread(ipsych_design_path)       # Meta data file containing info on the iPSYCH design from the registers
phenotype_info <- fread(phenotype_path)

# Creating variables of age, sex, phenotype status
cohort_info <- dosage$fam %>%
  left_join(ipsych_design, by = "pid") %>%
  left_join(phenotype_info, by = "pid") %>%
  mutate(
    status = ,
    age = ,
    sex = ,
    aoo = ,
  )


# Covariates
pcs <- readRDS()
rel <- readRDS()

cov <- cbind(pcs, )
