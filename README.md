# Clinical Bioinformatics Case Analysis

## Project Overview

This project analyzes an unknown bacterial isolate using Oxford Nanopore long-read sequencing data. The workflow includes quality control, genome assembly, species identification, sequence typing, antimicrobial resistance analysis, plasmid detection, and virulence profiling.

## Project Structure

```text
clinical_case/
├── code/
│   └── run_analysis.sh
├── data/
    └── unknown_isolate.fastq.gz
├── findings.md
├── README.md
└── results/
    ├── assembly/
    ├── quast/
    ├── nanoplot/
    ├── amrfinder/
    ├── plasmidfinder/
    ├── mobsuite/
    └── kleborate/
```

## Input

- `data/unknown_isolate.fastq.gz`

## Software

## Software and Online Resources

The following software tools and online resources were used during the analysis:

- SeqKit
- NanoPlot
- Flye
- QUAST
- NCBI BLAST
- MLST
- AMRFinderPlus
- PlasmidFinder
- MOB-suite
- Kleborate

## Running the Analysis

Clone the repository and navigate to the project root directory.

Then run:

```bash
cd code
bash run_analysis.sh
```

## Workflow

1. Quality assessment of Oxford Nanopore reads using NanoPlot
2. Genome assembly using Flye
3. Assembly quality assessment using QUAST
4. Species identification using NCBI BLAST
5. Sequence typing using MLST
6. Detection of antimicrobial resistance genes using AMRFinderPlus
7. Plasmid identification using PlasmidFinder and MOB-suite
8. Virulence and genomic characterization using Kleborate

## Main Findings

- The isolate was identified as *Klebsiella pneumoniae*.
- MLST analysis assigned the isolate to sequence type ST258.
- AMRFinderPlus identified multiple antimicrobial resistance genes, including the carbapenemase gene **blaKPC-3**.
- Plasmid analysis indicated that **blaKPC-3** is associated with an IncI2 plasmid.
- Kleborate analysis did not identify hypervirulence-associated loci.

## Running the Analysis

The commands and workflow used for the analysis are available in the `code/` directory.

Analysis outputs are located in the `results/` directory.
