# Reproducibility

## Purpose

This document describes how the analysis can be reproduced using the code and documentation provided in this repository. The workflow is implemented as a Bash shell script (`code/run_analysis.sh`), while the analysis steps, results, and interpretation are described in `findings.md` and `README.md`.

## Input Data

The analysis starts from the Oxford Nanopore sequencing file:

```
data/unknown_isolate.fastq.gz
```

The same input dataset should be used to reproduce the results reported in this project.

## Required Software

The following software is required before running the workflow:

- SeqKit
- NanoPlot
- Flye
- QUAST
- MLST
- AMRFinderPlus
- PlasmidFinder
- MOB-suite
- Kleborate

Species identification additionally requires access to the **NCBI BLAST web interface**.

## Running the Workflow

After installing the required software, navigate to the `code` directory and run:

```bash
cd code
bash run_analysis.sh
```

The shell script executes each analysis step in the correct order and stores the generated output files in the `results/` directory.

## Analysis Workflow

The workflow consists of the following steps:

1. Read quality assessment using SeqKit and NanoPlot.
2. Genome assembly using Flye.
3. Assembly quality assessment using QUAST.
4. Species identification using NCBI BLAST.
5. Sequence typing using MLST.
6. Detection of antimicrobial resistance genes using AMRFinderPlus.
7. Plasmid identification using PlasmidFinder and MOB-suite.
8. Virulence profiling using Kleborate.

## Manual Step

Species identification is the only manual step in this workflow. After genome assembly, the largest contig (`contig_4`) was extracted, and the first 100 kb of this contig was submitted to the NCBI BLAST web interface. This approach was used because the assembled genome exceeded the sequence size that could be conveniently submitted through the BLAST web interface. Therefore, this step is documented but is not automated within the shell script.

## Expected Output

Running the workflow generates:

- Read quality assessment reports
- Genome assembly
- Assembly quality report
- MLST typing results
- Antimicrobial resistance gene predictions
- Plasmid analysis results
- Virulence profiling results

Following the workflow described in this document, together with the provided code and the same input data, should reproduce the analysis and generate comparable results. The only exception is the manual BLAST step, which must be performed separately as described above.