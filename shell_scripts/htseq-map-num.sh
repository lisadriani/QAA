#!/bin/bash


read1="htseq_output/32_htseq_yes.txt"
read2="htseq_output/32_htseq_reverse.txt"
read3="htseq_output/16_htseq_yes.txt"
read4="htseq_output/16_htseq_reverse.txt"


echo "Reads Mapped"

Map1=$(awk '$1~"ENSMU"{sum+= $2} END {print sum}' $read1)

Map2=$(awk '$1~"ENSMU"{sum+= $2} END {print sum}' $read2)

Map3=$(awk '$1~"ENSMU"{sum+= $2} END {print sum}' $read3)

Map4=$(awk '$1~"ENSMU"{sum+= $2} END {print sum}' $read4)
echo $read1 
echo $Map1 
echo $read2 
echo $Map2 
echo $read3 
echo $Map3 
echo $read4 
echo $Map4


echo "Total Reads"

Unmap1=$(awk '{sum+= $2} END {print sum}' $read1)

Unmap2=$(awk '{sum+= $2} END {print sum}' $read2)

Unmap3=$(awk '{sum+= $2} END {print sum}' $read3)

Unmap4=$(awk '{sum+= $2} END {print sum}' $read4)
echo $read1 
echo $Unmap1 
echo $read2 
echo $Unmap2 
echo $read3 
echo $Unmap3 
echo $read4 
echo $Unmap4

# OUTPUT: 
# Reads Mapped
# htseq_output/32_htseq_yes.txt
# 453895
# htseq_output/32_htseq_reverse.txt
# 9914350
# htseq_output/16_htseq_yes.txt
# 333077
# htseq_output/16_htseq_reverse.txt
# 6873619
# Total Reads
# htseq_output/32_htseq_yes.txt
# 11468966
# htseq_output/32_htseq_reverse.txt
# 11468966
# htseq_output/16_htseq_yes.txt
# 8014158
# htseq_output/16_htseq_reverse.txt
# 8014158


##MATH 
# 32 htseq_yes 
# 453895/11468966 = 0.0396 
# 3.96%

# 32_htseq_reverse
# 9914350/11468966= 0.864
# 86.4%

# 16_htseq_yes
# 333077/8014158= 0.0416
# 4.16%

# 16_htseq_reverse
# 6873619/8014158=0.858
# 85.8%



















# echo "Percent of reads mapped for 32 R1:"
# a = $((Map1 / Unmap1))
# echo $a
# echo "Percent of reads mapped for 32 R2:"
# a = $(Map1/Unmap1)
# echo "Percent of reads mapped for 16 R1:"

# echo "Percent of reads mapped for 16 R2:"

