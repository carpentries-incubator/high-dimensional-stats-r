---
title: "Data"
---

# Prostate cancer data 
[Source](https://search.r-project.org/CRAN/refmans/bayesQR/html/Prostate.html)

Prostate specific antigen values and clinical measures for 97 patients hospitalised for a radical prostatectomy. Prostate specimens underwent histological and morphometric analysis. The column names refer to 

- lcavol: log(cancer volume)
- lweight: log(prostate weight)
- age: age
- lbph: log(benign prostatic hyperplasia amount)
- svi: seminal vesicle invasion
- lcp: log(capsular penetration)
- gleason: Gleason score
- pgg45: percentage Gleason scores 4 or 5
- lpsa: log(prostate specific antigen)

# Methylation data

[Source](https://bioconductor.org/packages/release/data/experiment/html/FlowSorted.Blood.EPIC.html)

Illumina Human Methylation data from EPIC on sorted peripheral adult blood cell populations. The data record DNA methylation assays for each individual, which measure, for many sites in the genome, the proportion of DNA that carries a methyl mark (a chemical modification that does not alter the DNA sequence). The methylation assays are recorded as normalised methylation levels (M-values), where negative values correspond to unmethylated DNA and positive values correspond to methylated DNA. The data object also contains phenotypic metadata for each individual such as age and BMI. Precisely, the data object contains: 

- assay(data): normalised methylation levels 
- colData(data): individual-level information:
    - Sample_Well:
    - Sample_Name:
    - purity:
    - Sex:
    - Age: age in years
    - weight_kg: weight in kilograms
    - height_m: height in metres
    - bmi: BMI
    - bmi_clas: BMI class
    - Ethnicity_wide:
    - Ethnic_self:
    - smoker: yes/no indicator of smoker status
    - Array: 
    - Slide:

{% include links.md %}
