#!/bin/bash 

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=trimmomatic.%j.out
#SBATCH --job-name=trim         ### Job Name



conda activate QAA 

/usr/bin/time -v trimmomatic \
    PE \
    output_16.R1.fastq output_16.R2.fastq\
    -baseout trim_16.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35 


/usr/bin/time -v trimmomatic \
    PE \
    output_32.R1.fastq output_32.R2.fastq\
    -baseout trim_32.fq.gz \
    LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

