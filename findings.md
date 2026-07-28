# Clinical Case Report

## 1. Introduction
Whole-genome sequencing (WGS) has become an essential tool in clinical microbiology for identifying bacterial pathogens, characterizing antimicrobial resistance genes, determining sequence types, and investigating the genetic basis of clinically important infections.

Compared with short-read sequencing technologies, Oxford Nanopore sequencing generates long reads that facilitate de novo genome assembly and improve the reconstruction of plasmids carrying antimicrobial resistance genes.

In this study, an unknown bacterial isolate was characterized using Oxford Nanopore long-read sequencing data.

The bioinformatics workflow included read quality assessment, genome assembly, species identification, multilocus sequence typing (MLST), antimicrobial resistance profiling, plasmid analysis, and virulence characterization.

The objective was to identify the bacterial species and evaluate its genomic features associated with antimicrobial resistance and pathogenic potential.

## 2. Materials and Methods
The bioinformatics analysis was performed using Oxford Nanopore long-read sequencing data obtained from an unknown bacterial isolate. Raw sequencing reads were initially assessed using SeqKit and NanoPlot to evaluate sequencing quality, read length distribution, GC content, and overall sequencing yield.

De novo genome assembly was performed using Flye, and assembly quality was evaluated with QUAST. Species identification was carried out by comparing a representative sequence from the assembled genome against the NCBI nucleotide database using BLAST.

Multilocus sequence typing (MLST) was performed to determine the sequence type of the isolate. Antimicrobial resistance genes were identified using AMRFinderPlus. Plasmid replicons were detected with PlasmidFinder, while MOB-suite was used to classify assembled contigs as plasmid or chromosomal and to evaluate plasmid mobility. Virulence-associated loci, capsule type, O-antigen type, and resistance predictions were determined using Kleborate.

## 3. Results

### 3.1 Read Quality Assessment

A total of 260,294 Oxford Nanopore reads comprising 576,590,333 bases were analyzed. The mean read length was 2,215 bp with an N50 read length of 15,932 bp. The average read quality score was 20.25 and the GC content was 55.85%, indicating sequencing data suitable for downstream analyses.

### 3.2 Genome Assembly

Genome assembly using Flye generated 12 contigs with a total assembly length of 5,896,334 bp. The largest contig measured 5,306,074 bp, resulting in an assembly N50 of 5,306,074 bp. QUAST analysis reported an L50 value of 1 and no ambiguous bases (Ns), indicating a highly contiguous assembly.

### 3.3 Species Identification

BLAST analysis of a representative sequence extracted from the largest contig identified the isolate as *Klebsiella pneumoniae* with 100% sequence identity and 100% query coverage.

### 3.4 Multilocus Sequence Typing (MLST)

MLST analysis assigned the isolate to Sequence Type 258 (ST258).

### 3.5 Antimicrobial Resistance Analysis

AMRFinderPlus identified multiple antimicrobial resistance genes, including the carbapenemase gene **blaKPC-3**, as well as **blaTEM-1**, **blaOXA-9**, **blaSHV-11**, and several genes conferring resistance to aminoglycosides, sulfonamides, phenicols, fosfomycin, quinolones, and disinfectants.

### 3.6 Plasmid Analysis

PlasmidFinder detected multiple plasmid replicons, including IncI2, IncFIB(K), IncFII(K), IncFII(Yp), and IncR. MOB-suite classified contig_15 as an IncI2 plasmid, while the largest contig (contig_4) was identified as chromosomal. Combined analysis indicated that the **blaKPC-3** gene is located on the IncI2 plasmid.

### 3.7 Virulence Analysis

Kleborate identified the isolate as *Klebsiella pneumoniae* ST258 with a virulence score of 0. No major hypervirulence-associated loci were detected. The isolate carried capsule locus KL107 (wzi154) and O-antigen locus O13. Kleborate also reported a resistance score of 2, representing resistance determinants across 10 antimicrobial classes.

## 4. Discussion

Whole-genome sequencing identified the unknown isolate as *Klebsiella pneumoniae* ST258, one of the most widespread multidrug-resistant clones associated with healthcare-associated infections worldwide (Wyres & Holt, 2018). This sequence type is frequently linked to carbapenem resistance and has played a major role in the global dissemination of resistant *K. pneumoniae* strains.

AMRFinderPlus detected multiple antimicrobial resistance genes, including the carbapenemase gene **blaKPC-3**, which is associated with resistance to carbapenem antibiotics that are commonly reserved for the treatment of severe Gram-negative bacterial infections. Combined results from PlasmidFinder and MOB-suite indicated that **blaKPC-3** is located on an IncI2 plasmid. Because plasmids facilitate horizontal gene transfer between bacteria, plasmid-associated carbapenem resistance represents a significant challenge for infection control and antimicrobial stewardship (Carattoli et al., 2014).

Although Kleborate assigned a virulence score of 0 and no major hypervirulence-associated loci were detected, the isolate remains clinically important because it carries numerous antimicrobial resistance genes and belongs to the high-risk ST258 lineage. This observation is consistent with previous studies showing that classical ST258 isolates are typically multidrug resistant rather than hypervirulent (Wyres & Holt, 2018).

Overall, the integration of multiple bioinformatics tools enabled comprehensive characterization of the isolate, including species identification, genome assembly, antimicrobial resistance profiling, plasmid characterization, and virulence assessment. These findings demonstrate the value of whole-genome sequencing as a powerful approach for the investigation and surveillance of clinically important bacterial pathogens.

## 5. Conclusion

This study successfully characterized an unknown bacterial isolate using a whole-genome sequencing bioinformatics workflow. The isolate was identified as *Klebsiella pneumoniae* ST258 carrying the carbapenemase gene **blaKPC-3** together with multiple additional antimicrobial resistance genes. Plasmid analysis indicated that blaKPC-3 is located on an IncI2 plasmid, highlighting its potential for horizontal dissemination. These findings demonstrate the importance of genomic approaches for identifying clinically significant multidrug-resistant pathogens and supporting infection control strategies.

## References
Alcock, B. P., Huynh, W., Chalil, R., et al. (2023). AMRFinderPlus and the Reference Gene Catalog facilitate examination of the genomic links among antimicrobial resistance, stress response, and virulence. *Scientific Reports, 13*, 7434. https://doi.org/10.1038/s41598-023-32902-2

Camacho, C., Coulouris, G., Avagyan, V., et al. (2009). BLAST+: Architecture and applications. *BMC Bioinformatics, 10*, 421. https://doi.org/10.1186/1471-2105-10-421

Carattoli, A., Zankari, E., García-Fernández, A., et al. (2014). In silico detection and typing of plasmids using PlasmidFinder and plasmid multilocus sequence typing. *Antimicrobial Agents and Chemotherapy, 58*(7), 3895–3903. https://doi.org/10.1128/AAC.02412-14

Kolmogorov, M., Yuan, J., Lin, Y., & Pevzner, P. A. (2019). Assembly of long, error-prone reads using repeat graphs. *Nature Biotechnology, 37*(5), 540–546.

Mikheenko, A., Prjibelski, A., Saveliev, V., Antipov, D., & Gurevich, A. (2018). Versatile genome assembly evaluation with QUAST-LG. *Bioinformatics, 34*(13), i142–i150.

Seemann, T. MLST. https://github.com/tseemann/mlst

Wyres, K. L., & Holt, K. E. (2018). Klebsiella pneumoniae population genomics and antimicrobial-resistant clones. *Nature Reviews Microbiology, 16*(7), 391–403.

Zankari, E., Hasman, H., Cosentino, S., et al. (2012). Identification of acquired antimicrobial resistance genes. *Journal of Antimicrobial Chemotherapy, 67*(11), 2640–2644.
