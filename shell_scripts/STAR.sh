#!/bin/bash

#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --output=STAR.%j.out
#SBATCH --cpus-per-task=8

conda activate QAA

/usr/bin/time -v STAR \
--runThreadN 8 \
--runMode genomeGenerate \
--genomeDir /projects/bgmp/ladriani/bioinfo/Bi622/QAA/mouse_dna_ens107.STAR_2.7.10a \
--genomeFastaFiles /projects/bgmp/ladriani/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa \
--sjdbGTFfile /projects/bgmp/ladriani/bioinfo/Bi622/QAA/Mus_musculus.GRCm39.107.gtf



read1='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_16_1P.fq.gz'
read2='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_16_2P.fq.gz'
genomedir='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/mouse_dna_ens107.STAR_2.7.10a'


/usr/bin/time -v STAR \
    --runThreadN 8 \
    --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn $read1 $read2 \
    --genomeDir $genomedir \
    --outFileNamePrefix 16


read1='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_32_1P.fq.gz'
read2='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/trim_32_2P.fq.gz'
genomedir='/projects/bgmp/ladriani/bioinfo/Bi622/QAA/mouse_dna_ens107.STAR_2.7.10a'


/usr/bin/time -v STAR \
    --runThreadN 8 \
    --runMode alignReads \
    --outFilterMultimapNmax 3 \
    --outSAMunmapped Within KeepPairs \
    --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
    --readFilesCommand zcat \
    --readFilesIn $read1 $read2 \
    --genomeDir $genomedir \
    --outFileNamePrefix 32