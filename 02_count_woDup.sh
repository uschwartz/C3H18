GTF=/Users/admin/Annotation/TAIR_10/genes.TAIR10.47.gtf

OutDir=/Volumes/PromisePegasus/_Service_/S048_C3H18_RNAseq/241010_gene_expr/trimmed/Counts

mkdir $OutDir"/woDups"

bamDir=/Volumes/PromisePegasus/_Service_/S048_C3H18_RNAseq/241010_gene_expr/trimmed/Alignment/bam/

cd $bamDir

featureCounts -p -T 12 -s 0 --ignoreDup  -a $GTF \
 -o $OutDir"/woDups"/count_table.txt *.bam &>$OutDir"/woDups"/count_info.txt

cd $OutDir"/woDups"

mkdir "multiQC"

multiqc -o "multiQC" .
