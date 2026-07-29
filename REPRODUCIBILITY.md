# Reproducibility

## Purpose

This document describes how the analysis presented in this project can be repeated using the provided code and documentation. The workflow is implemented as a Bash shell script (`code/run_analysis.sh`), while the analysis methods, results, and interpretation are described in `README.md` and `findings.md`.

## Analysis Environment

The project was developed on a Windows computer. Windows PowerShell was used for system setup, file management, Git operations, and launching Ubuntu through Windows Subsystem for Linux (WSL). The bioinformatics analyses were performed in Ubuntu (WSL) using the Bash shell. Software dependencies were managed with Miniconda in a dedicated Conda environment (`clinical_amr`).

## Input Data

The workflow uses the following Oxford Nanopore sequencing dataset:

```text
data/unknown_isolate.fastq.gz
```

The same input dataset should be used to repeat the analysis.

## Software and Resources

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

### Version control

- Git
- GitHub

## Running the Workflow

After setting up the analysis environment, creating the `clinical_amr` Conda environment, installing the required software, and placing the input FASTQ file in the `data/` directory, run:

```bash
cd code
bash run_analysis.sh
```

The script performs the automated analysis steps and stores the generated output files in the `results/` directory.

## Workflow Summary

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
- Genome assembly files
- Assembly quality report
- MLST sequence typing results
- Antimicrobial resistance gene predictions
- Plasmid analysis results
- Virulence profiling results

The provided code, documentation, and workflow description contain sufficient information for another researcher to repeat the analysis using the same input data, software, and analysis environment. Because species identification requires a manual BLAST search, this step should be performed as described above. Under the same conditions, comparable results are expected.