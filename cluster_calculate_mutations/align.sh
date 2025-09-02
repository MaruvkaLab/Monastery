#!/bin/bash

pigz -p 4 30x_1.fastq
pigz -p 4 30x_2.fastq
pigz -p 4 60x_1.fastq
pigz -p 4 60x_2.fastq

/Local/bfe_maruvka/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t 4 30x_1.fastq.gz 30x_2.fastq.gz > aligned30x.sam
samtools view -@ 4 -Sb aligned30x.sam > aligned30x.bam
rm aligned30x.sam
samtools sort  -@ 4 aligned30x.bam -o aligned30x.sorted.bam
rm aligned30x.bam
samtools index  -@ 4 aligned30x.sorted.bam


/Local/bfe_maruvka/bwa-mem2-2.2.1_x64-linux/bwa-mem2 mem -t 4 60x_1.fastq.gz 60x_2.fastq.gz > aligned60x.sam
samtools view -Sb  -@ 4 aligned60x.sam > aligned60x.bam
rm aligned60x.sam
samtools sort  -@ 4 aligned60x.bam -o aligned60x.sorted.bam
rm aligned60x.bam
samtools index -@ 4 aligned60x.sorted.bam