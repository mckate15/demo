grep -v '^>' BRCA1_seq.txt | head -n 2 > DNA_seq.txt
cat DNA_seq.txt | tr T U 
 
