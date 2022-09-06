#!/bin/bash 

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=fastqc.%j.out
#SBATCH --cpus-per-task=8
#SBATCH --mail-type=END
#SBATCH --mail-user=ladriani@uoregon.edu  ### Where to send mail
#SBATCH --job-name=fastqc         ### Job Name

## running for the original files : 
# /usr/bin/time -v fastqc \
#     -o qc_out \
#     --noextract \
#     /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz\
#     /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz \
#     /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R1_001.fastq.gz \
#     /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R2_001.fastq.gz 
module load fastqc/0.11.5
## running for the trimmed fastq files: 
/usr/bin/time -v fastqc \
    -o qc_trim_out \
    --noextract \
    /projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_16_1P.fq.gz \
    /projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_16_2P.fq.gz \
    /projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_32_1P.fq.gz \
    /projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_32_2P.fq.gz 

