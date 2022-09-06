#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=htseq-count.%j.out


conda activate QAA


/usr/bin/time -v \
    htseq-count \
    32Aligned.out.sam Mus_musculus.GRCm39.107.gtf \
    --stranded=yes > htseq_output/32_htseq_yes.txt

/usr/bin/time -v \
    htseq-count \
    32Aligned.out.sam Mus_musculus.GRCm39.107.gtf\
    --stranded=reverse > htseq_output/32_htseq_reverse.txt

/usr/bin/time -v \
    htseq-count \
    16Aligned.out.sam Mus_musculus.GRCm39.107.gtf\
    --stranded=reverse > htseq_output/16_htseq_reverse.txt

/usr/bin/time -v \
    htseq-count \
    16Aligned.out.sam Mus_musculus.GRCm39.107.gtf\
    --stranded=yes > htseq_output/16_htseq_yes.txt

