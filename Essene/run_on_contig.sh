#!/bin/bash
## 1 = input bam
#export NORMAL_BAM=${1}
#
## 2 = input bam
#export TUMOR_BAM=${2}


# 1 = chrom
export CHROM=${1}

# 2 = results directory
export RESULTS_DIRECTORY=${2}

# 3 = name
export NAME=${3}

# 4 = slimeball dir
export SLIMEBALL=${4}


export NORMAL_CONTIG_BAM=$RESULTS_DIRECTORY/$NAME\_$CHROM\_normal.bam
export TUMOR_CONTIG_BAM=$RESULTS_DIRECTORY/$NAME\_$CHROM\_tumor.bam

export JAVA_7=$SLIMEBALL/java-se-7u75-ri/bin/java
export JAVA_8=$SLIMEBALL/openlogic-openjdk-8u432-b06-linux-x64/bin/java



echo $NAME
#echo $CONTIG_BAM

#samtools view -b -h -F 1024 {input_bam} {chrom} -o {output_fp}
#samtools view -b -h -F 1024 $NORMAL_BAM $CHROM -o $NORMAL_CONTIG_BAM
#samtools index TUMOR_CONTIG_BAM
#
#samtools view -b -h -F 1024 $TUMOR_BAM $CHROM -o $TUMOR_CONTIG_BAM
#samtools index NORMAL_CONTIG_BAM


# ContEst
$JAVA_8 -jar $SLIMEBALL/tools/gatk-3.8/GenomeAnalysisTK.jar \
-T ContEst \
-I:eval $TUMOR_CONTIG_BAM \
-I:genotype $NORMAL_CONTIG_BAM \
-L $SLIMEBALL/data/broad_custom_exome_v1_filt.Homo_sapiens_assembly38.targets.interval_list \
-L $SLIMEBALL/data/snp6_filt.na35.remap.hg38.subset_fixed.interval_list \
-isr INTERSECTION \
-R $SLIMEBALL/data/GRCh38.d1.vd1.fa \
-l INFO \
-pf $SLIMEBALL/data/hg38_population_stratified_af_hapmap_3.3.fixed6.vcf \
-o $RESULTS_DIRECTORY/"${NAME}"_contamination.af.txt \
--trim_fraction 0.03 \
--beta_threshold 0.05 \
-br $RESULTS_DIRECTORY/"${NAME}"_contamination.base_report.txt \
-mbc 100 \
--min_genotype_depth 30 \
--min_genotype_ratio 0.8


#Normal
$JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectGcBiasMetrics \
I=$NORMAL_CONTIG_BAM \
O=$RESULTS_DIRECTORY/"${NAME}"_normal_gc_bias_metrics.txt \
CHART=$RESULTS_DIRECTORY/"${NAME}"_normal_gc_bias_metrics.pdf \
S=$RESULTS_DIRECTORY/"${NAME}"_normal_summary_metrics.txt \
R=$SLIMEBALL/data/GRCh38.d1.vd1.fa


#CollectGcBiasMetrics
#Tumor
$JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectGcBiasMetrics \
I=$TUMOR_CONTIG_BAM \
O=$RESULTS_DIRECTORY/"${NAME}"_tumor_gc_bias_metrics.txt \
CHART=$RESULTS_DIRECTORY/"${NAME}"_tumor_gc_bias_metrics.pdf \
S=$RESULTS_DIRECTORY/"${NAME}"_tumor_summary_metrics.txt \
R=$SLIMEBALL/data/GRCh38.d1.vd1.fa




#Extracting the contamination fraction from the ContEst output
cont=$(awk 'BEGIN{FS="\t"}{if(FNR==2) {print $4/100}}' $RESULTS_DIRECTORY/"${NAME}"_contamination.af.txt)
#cont="croc"

$JAVA_7 -jar $SLIMEBALL/tools/mutect/bin/mutect.jar \
--analysis_type MuTect \
--reference_sequence $SLIMEBALL/data/GRCh38.d1.vd1.fa \
--input_file:normal $NORMAL_CONTIG_BAM \
--input_file:tumor  $TUMOR_CONTIG_BAM \
--fraction_contamination "${cont}" \
--dbsnp $SLIMEBALL/data/common_all_20180418.vcf \
--cosmic $SLIMEBALL/data/CosmicCodingMuts_v89_fixed.vcf \
--out $RESULTS_DIRECTORY/"${NAME}".call_stats.txt \
--vcf $RESULTS_DIRECTORY/"${NAME}".Mutect1.vcf