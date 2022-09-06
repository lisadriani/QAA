#!/bin/bash 

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=cutadapt.%j.out
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=END
#SBATCH --mail-user=ladriani@uoregon.edu  ### Where to send mail
#SBATCH --job-name=cutadapt         ### Job Name

conda activate QAA

/usr/bin/time -v cutadapt \
     -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
     -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
     -o output_32.R1.fastq \
     -p output_32.R2.fastq \
     /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz\
     /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz

/usr/bin/time -v cutadapt \
     -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA \
     -A AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT \
     -o output_16.R1.fastq \
     -p output_16.R2.fastq \
     /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R1_001.fastq.gz \
     /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R2_001.fastq.gz 

