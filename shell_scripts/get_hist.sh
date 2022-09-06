#!/bin/bash 

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=gethist.%j.out
#SBATCH --job-name=gethist         ### Job Name

conda activate bgmp_py310

/usr/bin/time -v ../Demultiplex/Assignment-the-first/get_hist.py -l 101 \
     -f /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R1_001.fastq.gz \
    -o histogram/32_R1_hist

/usr/bin/time -v ../Demultiplex/Assignment-the-first/get_hist.py -l 101\
     -f /projects/bgmp/shared/2017_sequencing/demultiplexed/32_4G_both_S23_L008_R2_001.fastq.gz \
     -o histogram/32_R2_hist

/usr/bin/time -v ../Demultiplex/Assignment-the-first/get_hist.py -l 101\
     -f /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R1_001.fastq.gz \
     -o histogram/16_R1_hist

/usr/bin/time -v ../Demultiplex/Assignment-the-first/get_hist.py -l 101\
     -f /projects/bgmp/shared/2017_sequencing/demultiplexed/16_3D_mbnl_S12_L008_R2_001.fastq.gz \
     -o histogram/16_R2_hist





