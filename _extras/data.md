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

Methylation markers across different age groups. The CpGmarker variable used in this lesson are CpG site encodings.
  
# Breast cancer gene expression data

[Source](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE2990)

Gene expression data showing microarray results for different probes used to examine gene expression profiles in 91 different breast cancer patient samples and metdata for the sampled patients.

- assay(data): gene expression data for each individual
- colData(data): individual-level information
  - Study: study identifier 
  - Age: age in years
  - Distant.RFS: indicator of distant relapse free survival  
  - ER: estrogen receptor positive or negative status
  - GGI: gene expression grade index 
  - Grade: histologic grade 
  - Size: tumour size in cm
  - Time.RFS: time between the date of surgery and diagnosis of relapse (time in relapse free survival, RFS)

# Single-cell RNA sequencing data

[Source](https://pubmed.ncbi.nlm.nih.gov/25700174/)

Gene expression measurements for over 9000 genes in over 3000 mouse cortex and hippocampus cells. These data are an excerpt of the original source.

- assay(data): gene expression data 
- colData(data): individual cell-level information
  - tissue: tissue type
  - group #: group number
  - total mRNA mol: total number of observed mRNA molecules corresponding to this cell's unique barcode identifier
    - well: the well that this cell's cDNA was stored in during processing
  - sex: sex of the donor animal
  - age: age of the donor animal 
  - diameter: estimated cell diameter
  - cell_id: cell identifier 
  - level1class: a cluster label identified using a mix of computational techniques and manual annotation
  - level2class: a cluster label identified using a mix of computational techniques and manual annotation
  - sizeFactor:   estimate size factor calculated for scaling normalisation using (e.g., **`scran`**).


{% include links.md %}

