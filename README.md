# Clinical Bioinformatics Case Analysis

## Project Overview

This project analyzes an unknown bacterial isolate using Oxford Nanopore long-read sequencing data. The workflow includes quality control, genome assembly, species identification, sequence typing, antimicrobial resistance analysis, plasmid detection, and virulence profiling.

## Project Structure

```text
clinical-bioinformatics-case/
├── code/
│   └── run_analysis.sh
├── results/
│   ├── amrfinder_results.tsv
│   ├── blast/
│   ├── flye/
│   ├── kleborate/
│   ├── mobsuite/
│   ├── nanoplot/
│   ├── plasmidfinder/
│   └── quast/
├── .gitignore
├── findings.md
├── note_to_professor_kilic.md
├── README.md
└── REPRODUCIBILITY.md
```

## Input

- `data/unknown_isolate.fastq.gz`

## Software

## Software and Online Resources

The project was developed on a Windows computer. Windows PowerShell was used for system setup, file management, Git operations, and launching Ubuntu through Windows Subsystem for Linux (WSL). The bioinformatics analyses were performed in Ubuntu (WSL) using the Bash shell. Software dependencies were managed with Miniconda in a dedicated Conda environment (`clinical_amr`).

The following software tools and online resources were used during the analysis.

### Operating system and analysis environment

- Windows
- Windows PowerShell
- Windows Subsystem for Linux (WSL)
- Ubuntu
- Bash
- Miniconda
- Conda environment (`clinical_amr`)

### Bioinformatics software

- SeqKit
- NanoPlot
- Flye
- QUAST
- MLST
- AMRFinderPlus
- PlasmidFinder
- MOB-suite
- Kleborate

### Online resource

- NCBI BLAST Web Interface (manual species identification)

## Running the Analysis

Clone the repository and navigate to the project root directory.

The workflow was developed and tested using Ubuntu through Windows Subsystem for Linux (WSL). Software dependencies were managed with Miniconda in a dedicated Conda environment (`clinical_amr`).

Run the analysis using:

```bash
cd code
bash run_analysis.sh
```

The script executes each analysis step sequentially and saves the generated output files in the `results/` directory.

Species identification is performed manually using the NCBI BLAST web interface after genome assembly, as described in the report.

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
