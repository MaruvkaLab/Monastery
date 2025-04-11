
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

export SAMPLE_DIR=${5}


export NORMAL_CONTIG_BAM=$SAMPLE_DIR/normal/$CHROM\_normal.bam
export TUMOR_CONTIG_BAM=$SAMPLE_DIR/tumor/$CHROM\_tumor.bam

export JAVA_7=$SLIMEBALL/path/java-se-7u75-ri/
export JAVA_8=$SLIMEBALL/path/openlogic-openjdk-8u432-b06-linux-x64/bin/java


echo $NAME
#echo $CONTIG_BAM

#samtools view -b -h -F 1024 {input_bam} {chrom} -o {output_fp}
#samtools view -b -h -F 1024 $NORMAL_BAM $CHROM -o $NORMAL_CONTIG_BAM
#samtools index TUMOR_CONTIG_BAM
#
#samtools view -b -h -F 1024 $TUMOR_BAM $CHROM -o $TUMOR_CONTIG_BAM
#samtools index NORMAL_CONTIG_BAM


# ContEst
#/usr/bin/time $JAVA_8 -jar $SLIMEBALL/tools/gatk-3.8/GenomeAnalysisTK.jar \
#-T ContEst \
#-I:eval $TUMOR_CONTIG_BAM \
#-I:genotype $NORMAL_CONTIG_BAM \
#-L $SLIMEBALL/data/broad_custom_exome_v1_filt.Homo_sapiens_assembly38.targets.interval_list \
#-L $SLIMEBALL/data/snp6_filt.na35.remap.hg38.subset_fixed.interval_list \
#-isr INTERSECTION \
#-R $SLIMEBALL/data/GRCh38.d1.vd1.fa \
#-l INFO \
#-pf $SLIMEBALL/data/hg38_population_stratified_af_hapmap_3.3.fixed6.vcf \
#-o $RESULTS_DIRECTORY/"${CHROM}"_contamination.af.txt \
#--trim_fraction 0.03 \
#--beta_threshold 0.05 \
#-br $RESULTS_DIRECTORY/"${CHROM}"_contamination.base_report.txt \
#-mbc 100 \
#--min_genotype_depth 30 \
#--min_genotype_ratio 0.8 &> contest_"${CHROM}.out"
#
#
#Normal
/usr/bin/time $JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectGcBiasMetrics \
I=$NORMAL_CONTIG_BAM \
O=$RESULTS_DIRECTORY/"${CHROM}"_normal_gc_bias_metrics.txt \
CHART=$RESULTS_DIRECTORY/"${CHROM}"_normal_gc_bias_metrics.pdf \
S=$RESULTS_DIRECTORY/"${CHROM}"_normal_summary_metrics.txt \
R=$SLIMEBALL/data/GRCh38.d1.vd1.fa &> "${CHROM}"_gcbiasnormal.out

#
#CollectGcBiasMetrics
#Tumor
/usr/bin/time $JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectGcBiasMetrics \
I=$TUMOR_CONTIG_BAM \
O=$RESULTS_DIRECTORY/"${CHROM}"_tumor_gc_bias_metrics.txt \
CHART=$RESULTS_DIRECTORY/"${CHROM}"_tumor_gc_bias_metrics.pdf \
S=$RESULTS_DIRECTORY/"${CHROM}"_tumor_summary_metrics.txt \
R=$SLIMEBALL/data/GRCh38.d1.vd1.fa &> "${CHROM}"_gcbiastumor.out

/usr/bin/time $JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectWgsMetrics \
      I=$TUMOR_CONTIG_BAM \
      O=$RESULTS_DIRECTORY/"${CHROM}"_wgs_tumor_metrics.txt \
      R=$SLIMEBALL/data/GRCh38.d1.vd1.fa &> "${CHROM}"_wgs_tumor_metrics.out

/usr/bin/time $JAVA_8 -jar $SLIMEBALL/tools/picard/picard.jar CollectWgsMetrics \
      I=$NORMAL_CONTIG_BAM \
      O=$RESULTS_DIRECTORY/"${CHROM}"_wgs_normal_metrics.txt \
      R=$SLIMEBALL/data/GRCh38.d1.vd1.fa &> "${CHROM}"_wgs_normal_metrics.out