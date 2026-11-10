# CellChat Analysis of Human Pancreatic Islets

## 1. Introduction
In this project, I used CellChat to study how different cell types in human pancreatic islets communicate with each other through ligand–receptor interactions. The analysis was performed using single-cell RNA sequencing data.

## 2. Research Question
How do different pancreatic cell types communicate through ligand–receptor interactions, and which signaling pathways are involved?

## 3. Dataset
- **Dataset:** GSE84133
- **Source:** NCBI Gene Expression Omnibus (GEO)
- **Organism:** Human
- **Samples used:** Four human sample files
- **Final data:** 8,569 cells and 20,125 genes

[Dataset link](https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE84133)

## 4. Tools Used
- Google Colab
- R and CellChat
- Bioconductor
- rpy2

## 5. Methodology
1. Downloaded and extracted the dataset.
2. Selected and combined the human sample files.
3. Prepared gene expression data and cell metadata.
4. Created the CellChat object and loaded the human database.
5. Normalized the data and identified overexpressed genes and ligand–receptor interactions.
6. Calculated communication probabilities and identified signaling pathways.
7. Generated network visualizations and analysed signaling roles.

## 6. Additional Analysis
I compared two CellChat averaging methods, triMean and truncatedMean (trim = 0.1), to understand how the choice of method affects communication predictions.

| Method | Total communication probability |
|---|---:|
| triMean | 9.008075 × 10⁻⁶ |
| truncatedMean | 1.227226 × 10⁻⁵ |

The truncatedMean method produced a higher total communication probability than triMean.

## 7. Results
- 14 cell groups were identified.
- 2,952 ligand–receptor interactions remained after filtering.
- 75 signaling pathways were identified.
- COLLAGEN and CD99 showed the highest summed communication probabilities.
- PARs pathway analysis identified PRSS1 and PRSS3 ligand interactions with PARD3 and F2R.

The results show potential communication patterns between pancreatic cell types. These are computational predictions and require experimental validation.

## 8. How to Run
1. Open `CellChat_Analysis.ipynb` in Google Colab.
2. Run the dataset download script.
3. Install the required packages.
4. Execute the notebook cells in order to generate the analysis and visualizations.

## 9. Repository Contents
- `CellChat_Analysis.ipynb` – Main analysis notebook.
- `environment.yml` – Software environment.
- `download_data.R` – Dataset download script.
- `Results/` – CSV files and generated figures.

## 10. Reference
Jin et al. (2021). *Inference and analysis of cell-cell communication using CellChat*. Nature Communications, 12, 1088.

https://doi.org/10.1038/s41467-021-21246-9
