#!/bin/bash


###
#Step 1 - Extracting the contamination value from each contig (if it exists) and extracting valid number of SNPs
###

declare -A snp_sample
declare -A cont_sample

echo -e "\n###"

for file in <output_dir_step2>/"${sample}"_chr*_contamination.base_report.txt
do
	contig=$(basename "${file}" | awk 'BEGIN{FS="_"}{print $4}')

	echo -e "File: ${file}"
	echo "Contig: ${contig}"

	#Check if a contig's ContEst output has two lines, and if so, proceed
	if awk 'BEGIN{FS="\t"; value=1}{if(FNR==2) {value=0; exit 0}}END{exit value}' "${file}" #Return true only if the file contains 2 rows
	then
		snp_contig=$(wc -l < <output_dir_step2>/"${sample}"_"${contig}"_contamination.base_report.txt) #Number of SNPs used for the current contig
		let snp_contig=snp_contig-1 #Removing header row form the count
		echo "Number of SNPS used for the current contig: $snp_contig"
		snp_sample["$contig"]="$snp_contig" #An array collecting SNPs count from multiple contigs


		#Extracting the contamination fraction from the ContEst output
		cont_contig=$(awk 'BEGIN{FS="\t"}{if(FNR==2) {print $4/100}}' "${file}")
		echo -e "Estimated contamination for the current contig: $cont_contig\n\n"
		cont_sample["$contig"]="$cont_contig" #An array collecting contamination values from multiple contigs
	else
		echo -e "${contig} was not used to estimate contamination.\n\n"
	fi
done



###
#Step 2 - Summing the total number of SNPs used to calculate the contamination
###

snp_tot=0

for i in ${snp_sample[@]}
do
	let snp_tot+=$i
done
echo -e "###\nTotal snps: $snp_tot\n###\n"



###
#Step 3 - Calculating the SNPs fraction values, the weighted contamination of each contig and the total contamination of a sample
###

cont_tot=0
for i in "${!snp_sample[@]}"
do
	frac=$(echo "${snp_sample[$i]} / ${snp_tot}" | bc -l | awk '{printf "%.10f", $0}') #Fraction of SNPs in a contig
	weighted_frac=$(echo "${cont_sample[$i]} * $frac" | bc -l) #Weighted contamination per contig
	cont_tot=$(echo "$cont_tot + $weighted_frac" | bc -l | awk '{printf "%.10f", $0}') #Total sample contamination

	#Printing intermediate results
	echo -e "Contig: $i\nContig SNPs fraction: $frac\nWeighted contig contamination: $weighted_frac\nTotal contamination by now: $cont_tot\n"

done


cont_tot_upd=$(echo "$cont_tot" | awk '{printf "%.3f", $0}') #Output in up to 3 digits after the decimal point

echo -e "###\nSample ${sample} estimated contamination: ${cont_tot_upd}"