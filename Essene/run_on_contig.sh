#!/bin/bash
# 1 = input bam
export NORMAL_BAM=${1}

# 2 = input bam
export TUMOR_BAM=${2}


# 3 = chrom
export CHROM=${3}

# 3 = results directory
export RESULTS_DIRECTORY=${4}

# 4 = name
export NAME=${5}

# 6 = slimeball dir
export SLIMEBALL=${6}


export NORMAL_CONTIG_BAM=$RESULTS_DIRECTORY/$NAME\_$CHROM\_normal.bam
export TUMOR_CONTIG_BAM=$RESULTS_DIRECTORY/$NAME\_$CHROM\_tumor.bam


echo $NAME
#echo $CONTIG_BAM

#samtools view -b -h -F 1024 {input_bam} {chrom} -o {output_fp}
#samtools view -b -h -F 1024 $NORMAL_BAM $CHROM -o $NORMAL_CONTIG_BAM
#samtools index TUMOR_CONTIG_BAM
#
#samtools view -b -h -F 1024 $TUMOR_BAM $CHROM -o $TUMOR_CONTIG_BAM
#samtools index NORMAL_CONTIG_BAM


# ContEst
java -jar $SLIMEBALL/tools/gatk-3.8/GenomeAnalysisTK.jar \   #Add the relevant <path>
-T ContEst \
-I:eval $TUMOR_CONTIG_BAM \   #Add the <download_dir>
-I:genotype $NORMAL_CONTIG_BAM \   ##Add the <download_dir>
-L $slimeball/data/broad_custom_exome_v1_filt.Homo_sapiens_assembly38.targets.interval_list \   #Add the <input_files_dir>
-L $slimeball/data/snp6_filt.na35.remap.hg38.subset_fixed.interval_list \   #Add the <input_files_dir>
-isr INTERSECTION \
-R $slimeball/data/GRCh38.d1.vd1.fa \   #Add the <reference_dir>
-l INFO \
-pf $slimeball/data/hg38_population_stratified_af_hapmap_3.3.fixed6.vcf \   #Add the <input_files_dir>
-o $RESULTS_DIRECTORY/"${NAME}"_contamination.af.txt \   #Add the <output_dir_step2>
--trim_fraction 0.03 \
--beta_threshold 0.05 \
-br $RESULTS_DIRECTORY/"${NAME}"_contamination.base_report.txt \   #Add the <output_dir_step2>
-mbc 100 \
--min_genotype_depth 30 \
--min_genotype_ratio 0.8


#Normal
java -jar <path>/picard.jar CollectGcBiasMetrics \     #Add the <path>
I=$NORMAL_CONTIG_BAM \      #Add the <download_dir>
O=$RESULTS_DIRECTORY/"${NAME}"_normal_gc_bias_metrics.txt \  #Assign here the <output_dir_step1b>
CHART=$RESULTS_DIRECTORY/"${NAME}"_normal_gc_bias_metrics.pdf \   #Assign here the <output_dir_step1b>
S=$RESULTS_DIRECTORY/"${NAME}"_normal_summary_metrics.txt \  #Assign here the <output_dir_step1b>
R=$slimeball/data/GRCh38.d1.vd1.fa   #Add the <reference_dir>


#CollectGcBiasMetrics
#Tumor
java -jar $slimeball/tools/picard/picard.jar CollectGcBiasMetrics \     #Add the <path>
I=$TUMOR_CONTIG_BAM \   #Add the <download_dir>
O=$RESULTS_DIRECTORY/"${NAME}"_tumor_gc_bias_metrics.txt \  #Assign here the <output_dir_step1b>
CHART=$RESULTS_DIRECTORY/"${NAME}"_tumor_gc_bias_metrics.pdf \   #Assign here the <output_dir_step1b>
S=$RESULTS_DIRECTORY/"${NAME}"_tumor_summary_metrics.txt \  #Assign here the <output_dir_step1b>
R=$slimeball/data/GRCh38.d1.vd1.fa   #Add the <reference_dir>




#Extracting the contamination fraction from the ContEst output
cont=$(awk 'BEGIN{FS="\t"}{if(FNR==2) {print $4/100}}' $RESULTS_DIRECTORY/"${NAME}"_contamination.af.txt)

java -jar $slimeball/tools/mutect/bin/mutect.jar \   #Add the relevant <path>
--analysis_type MuTect \
--reference_sequence $slimeball/data/GRCh38.d1.vd1.fa \   ##Add the <reference_dir>
--input_file:normal $NORMAL_CONTIG_BAM \   ##Add the <download_dir>
--input_file:tumor  $TUMOR_CONTIG_BAM \     ##Add the <download_dir>
--fraction_contamination "$cont" \
--dbsnp $slimeball/data/common_all_20180418.vcf \   #Add the <input_files_dir>
--cosmic $slimeball/data/CosmicCodingMuts_v89_fixed.vcf \   #Add the <input_files_dir>
--out $RESULTS_DIRECTORY/"${NAME}".call_stats.txt   #Add the <output_dir_step4a>
--vcf $RESULTS_DIRECTORY/"${NAME}".Mutect1.vcf   #Add the <output_dir_step4a>