# Clinical Bioinformatics Case Analysis

## Project Overview

This project analyzes an unknown bacterial isolate using Oxford Nanopore long-read sequencing data. The workflow includes quality control, genome assembly, species identification, sequence typing, antimicrobial resistance analysis, plasmid detection, and virulence profiling.

## Project Structure

```
clinical_case/
├── code/
├── data/
├── findings.md
├── README.md
└── results/
```

## Input

- `data/unknown_isolate.fastq.gz`

## Software

The following software was used during the analysis:

- SeqKit
- NanoPlot
- Flye
- QUAST
- BLAST
- MLST
- AMRFinderPlus
- PlasmidFinder
- MOB-suite
- Kleborate

## Workflow

1. Quality assessment of Oxford Nanopore reads
2. Genome assembly using Flye
3. Assembly evaluation using QUAST
4. Species identification using BLAST
5. MLST sequence typing
6. Detection of antimicrobial resistance genes
7. Plasmid identification
8. Virulence analysis

## Main Findings

- Species: *Klebsiella pneumoniae*
- Sequence Type: ST258
- Carbapenemase gene: **blaKPC-3**
- Multiple antimicrobial resistance genes detected
- **blaKPC-3** was associated with an IncI2 plasmid
- No hypervirulence-associated loci were detected

## Running the Analysis

The commands and workflow used for the analysis are available in the `code/` directory.

Analysis outputs are located in the `results/` directory.
