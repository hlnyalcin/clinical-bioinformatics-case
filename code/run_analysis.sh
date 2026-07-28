#!/bin/bash

# =====================================================
# Clinical Bioinformatics Case Analysis Workflow
# Oxford Nanopore long-read sequencing analysis
# =====================================================

# Create output directories
mkdir -p ../results/flye
mkdir -p ../results/quast
mkdir -p ../results/plasmidfinder
mkdir -p ../results/mobsuite
mkdir -p ../results/kleborate

# -----------------------------------------------------
# Quality Control
# -----------------------------------------------------

seqkit stats ../data/unknown_isolate.fastq.gz

NanoPlot \
    --fastq ../data/unknown_isolate.fastq.gz \
    -o ../results/nanoplot

# -----------------------------------------------------
# Genome Assembly
# -----------------------------------------------------

flye \
    --nano-raw ../data/unknown_isolate.fastq.gz \
    --out-dir ../results/flye \
    --threads 4

# -----------------------------------------------------
# Assembly Evaluation
# -----------------------------------------------------

quast.py \
    ../results/flye/assembly.fasta \
    -o ../results/quast

# -----------------------------------------------------
# Extract largest contig fragment for BLAST
# -----------------------------------------------------

seqkit grep -n -p contig_4 ../results/flye/assembly.fasta \
    > ../results/flye/contig4.fasta

seqkit subseq \
    -r 1:100000 \
    ../results/flye/contig4.fasta \
    -o ../results/flye/contig4_100k.fasta

# BLAST identification was performed using the
# NCBI BLAST web interface with contig4_100k.fasta

# -----------------------------------------------------
# MLST
# -----------------------------------------------------

mlst ../results/flye/assembly.fasta

# -----------------------------------------------------
# Antimicrobial Resistance Analysis
# -----------------------------------------------------

amrfinder \
    -n ../results/flye/assembly.fasta \
    -o ../results/amrfinder_results.tsv

# -----------------------------------------------------
# Plasmid Analysis
# -----------------------------------------------------

plasmidfinder.py \
    -i ../results/flye/assembly.fasta \
    -o ../results/plasmidfinder \
    -p ~/miniconda3/envs/plasmidfinder_env/share/plasmidfinder-2.1.6/database

# -----------------------------------------------------
# MOB-suite
# -----------------------------------------------------

mob_recon \
    -i ../results/flye/assembly.fasta \
    -o ../results/mobsuite \
    --force

# -----------------------------------------------------
# Kleborate
# -----------------------------------------------------

kleborate \
    -a ../results/flye/assembly.fasta \
    -o ../results/kleborate \
    --preset kpsc
