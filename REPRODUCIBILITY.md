# Reproducibility

This project was implemented as a Bash shell workflow (`code/run_analysis.sh`). The script documents each analysis step in the order it was performed, allowing the workflow to be repeated using the same input data.

## Input

- `data/unknown_isolate.fastq.gz`

## Running the workflow

After installing the required software listed in the README, run:

```bash
cd code
bash run_analysis.sh