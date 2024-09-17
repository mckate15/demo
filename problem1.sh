#!/bin/bash

grep -v '^>' BRCA1_seq.txt | head -n 2 > DNA_seq.txt
cat DNA_seq.txt | tr T U
cat DNA_seq.txt | tr ACGT TGCA
cat DNA_seq.txt | tr ACGT TGCA | rev
grep -o ATAGGAT BRCA1_seq.txt
sed "s/ATAGGAT/X\n/g" BRCA1_seq.txt | grep "X" | wc -l

grep -o ATG BRCA1_seq.txt | wc -l
sed "s/ATG/X\n/g" BRCA1_seq.txt| grep "X" | wc -l
