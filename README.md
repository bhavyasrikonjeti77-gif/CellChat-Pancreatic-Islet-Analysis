# CellChat Analysis of Human Pancreatic Islets

## 1. Project Overview

This project uses CellChat to study cell–cell communication in human pancreatic islets using single-cell RNA sequencing data.

The main aim is to identify communication between different pancreatic cell types through ligand–receptor interactions and understand the important signaling pathways involved.

## 2. Research Question

How do different cell types in human pancreatic islets communicate through ligand–receptor interactions, and which signaling pathways contribute most to the inferred communication network?

## 3. Dataset

- **Dataset:** GSE84133
- **Source:** NCBI Gene Expression Omnibus (GEO)
- **Organism:** Homo sapiens
- **Data type:** Single-cell RNA sequencing
- **Data used:** Four human sample files
- **Processed data:** 8,569 cells and 20,125 genes

Dataset link: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE84133

## 4. Tools and Technologies

- R
- Google Colab
- CellChat
- Bioconductor
- Matrix
- rpy2

## 5. Methodology

The analysis followed these main steps:

1. Downloaded and extracted the GSE84133 dataset.
2. Selected the human sample files.
3. Combined gene expression data and cell annotations.
4. Created a CellChat object and assigned the human CellChat database.
5. Normalized the expression data.
6. Identified overexpressed genes and ligand–receptor interactions.
7. Calculated communication probabilities.
8. Filtered interactions and identified signaling pathways.
9. Generated communication networks and pathway visualizations.
10. Analysed signaling roles and communication patterns.

## 6. Additional Analysis

To go beyond the standard CellChat workflow, two averaging methods were compared:

- triMean
- truncatedMean (trim = 0.1)

This comparison was performed to examine how the choice of averaging method affects inferred cell–cell communication.

## 7. Results and Interpretation

The analysis identified 2,952 ligand–receptor interactions after filtering and 75 signaling pathways.

The top inferred signaling pathways included:

- COLLAGEN
- CD99
- LAMININ
- CypA
- MIF
- PARs

The PARs pathway analysis identified four ligand–receptor combinations in the aggregated summary:

- PRSS1–PARD3
- PRSS1–F2R
- PRSS3–PARD3
- PRSS3–F2R

### Parameter comparison

| Method | Total communication probability |
|---|---:|
| triMean | 9.008075 × 10⁻⁶ |
| truncatedMean | 1.227226 × 10⁻⁵ |

The truncatedMean method produced a higher total communication probability than triMean in this analysis. This indicates that the averaging method can influence the inferred communication network.

These values represent computationally inferred communication probabilities, not direct experimental measurements of biological signaling.

## 8. How to Run the Project

1. Open the Google Colab notebook included in this repository.
2. Download the dataset from the GEO link provided above.
3. Follow the notebook cells in sequence.
4. Install the required R and Python packages when prompted.
5. Run the CellChat analysis and generate the results.

## 9. Repository Contents

- `CellChat_Analysis.ipynb` – Main analysis notebook.
- `README.md` – Project overview, methodology and results.
- `environment.yml` – Software environment information.
- `download_data.R` – Dataset download script.
- `Results/` – Exported figures and CSV files.

## 10. Limitations

CellChat predicts potential cell–cell communication based on gene expression and known ligand–receptor information. These predictions do not prove that interactions occur experimentally. Results can also be influenced by dataset quality, cell numbers, database coverage and parameter selection.

## 11. Conclusion

This project demonstrates the use of CellChat to infer and analyse potential cell–cell communication networks in human pancreatic islets. The comparison of triMean and truncatedMean also demonstrates how parameter choices can influence computational predictions.
