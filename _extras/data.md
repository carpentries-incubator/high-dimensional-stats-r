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
- colData(data): individual-level information
    - Sample_Well: sample well
    - Sample_Name: name of sample
    - purity: sample cell purity 
    - Sex: sex 
    - Age: age in years
    - weight_kg: weight in kilograms
    - height_m: height in metres
    - bmi: BMI
    - bmi_clas: BMI class
    - Ethnicity_wide: ethnicity, wide class
    - Ethnic_self: ethnicity, self-identified
    - smoker: yes/no indicator of smoker status
    - Array: type of array from the EPIC array library
    - Slide: slide identifier
 
# Horvath data

[Source](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0014821#s5)

Methylation markers across different age groups. 

- CpGmarker:
- CoefficientTraining     
- CoefficientTrainingShrunk:
- varByCpG:
- minByCpG:
- maxByCpG:
- medianByCpG:
- medianByCpGYoung:
- medianByCpGOld:
- Gene_ID:
- GenomeBuild:
- Chr:
- MapInfo:
- SourceVersion:
- TSS_Coordinate:
- Gene_Strand:
- Symbol:
- Synonym:
- Accession:
- GID:
- Annotation:
- Product:
- Marginal.Age.Relationship:

  Can't find these data or a full data description in the paper? It's also not clear to me what these data record? Methylation markers by age?
  
  # Breast cancer gene expression data

  # Single-cell RNA sequencing data

{% include links.md %}

