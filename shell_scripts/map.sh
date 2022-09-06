#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=mapping.%j.out


conda activate QAA

echo "16 Files"
/usr/bin/time -v  \
    /projects/bgmp/ladriani/bioinfo/Bi621/PS/PS8/map.py\
    -f 16Aligned.out.sam

echo "32 Files"
/usr/bin/time -v  \
    /projects/bgmp/ladriani/bioinfo/Bi621/PS/PS8/map.py\
    -f 32Aligned.out.sam