# Reproducibility

## Purpose

This document describes how the analysis presented in this project can be repeated using the provided code and documentation. The workflow is implemented as a Bash shell script (`code/run_analysis.sh`), while the analysis, results, and interpretation are described in `findings.md` and `README.md`.

## Analysis Environment

The analysis was performed on **Ubuntu running through Windows Subsystem for Linux (WSL)** on a Windows computer. All command-line analyses were executed using the **Bash shell**, and software dependencies were managed with **Miniconda** in a dedicated Conda environment (`clinical_amr`).

## Input Data

The workflow uses the following input file:

```
data/unknown_isolate.fastq.gz
```

The same input dataset should be used to repeat the analysis described in this project.

## Required Software

The following software and resources were used during the analysis.

### Environment

- Windows Subsystem for Linux (WSL)
- Ubuntu
- Bash
- Miniconda
- Conda environment (`clinical_amr`)

### Bioinformatics tools

- SeqKit
- NanoPlot
- Flye
- QUAST
- MLST
- AMRFinderPlus
- PlasmidFinder
- MOB-suite
- Kleborate

### External resource

- NCBI BLAST Web Interface (manual species identification)

## Running the Workflow

After setting up the Ubuntu WSL environment, installing the required software with Miniconda, and placing the input FASTQ file in the `data/` directory, navigate to the `code` directory and run:

```bash
cd code
bash run_analysis.sh
```

The script executes each analysis step sequentially and saves the generated output files in the `results/` directory.

## Analysis Workflow

The workflow consists of the following steps:

1. Read quality assessment using SeqKit and NanoPlot.
2. Genome assembly using Flye.
3. Assembly quality assessment using QUAST.
4. Species identification using the NCBI BLAST web interface.
5. Sequence typing using MLST.
6. Detection of antimicrobial resistance genes using AMRFinderPlus.
7. Plasmid identification using PlasmidFinder and MOB-suite.
8. Virulence profiling using Kleborate.

## Manual Step

Species identification is the only manual step in the workflow. After genome assembly, the largest contig (`contig_4`) was extracted, and the first 100 kb of this contig was submitted to the NCBI BLAST web interface. This approach was used because the assembled genome exceeded the sequence size that could be conveniently submitted through the BLAST web interface. Therefore, this step is documented but is not automated within the shell workflow.

## Expected Output

Running the workflow generates:

- Read quality assessment reports
- Genome assembly
- Assembly quality report
- MLST sequence typing results
- Antimicrobial resistance gene predictions
- Plasmid analysis results
- Virulence profiling results

The provided code, documentation, and workflow description contain sufficient information for another researcher to repeat the analysis using the same input data, software, and analysis environment. Because species identification requires a manual BLAST search, this step should be performed as described above. Under the same conditions, the workflow is expected to produce comparable results.