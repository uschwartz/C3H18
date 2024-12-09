AnalysisDir=/Volumes/PromisePegasus/_Service_/S048_C3H18_RNAseq/
AnnoDir=/Users/admin/Annotation/TAIR_10/

cd $AnalysisDir



nextflow run ~/00_scripts/nextflow/RNAseq_NAC  \
	--fastqPath $AnalysisDir/data/S574pooled/ \
	--outPath $AnalysisDir/241010_gene_expr/trimmed/ \
	--STARidxPath $AnnoDir/STARidx \
	--gtfPath $AnnoDir/nextflow \
	--gtfFile genes.TAIR10.47.gtf \
        --pairedEnd \
	--exprNamePE  '*{1,2}_001.fastq.gz' \
	--trim \
	--strandness "unstranded" \
	-w ./work_expr -resume

### TESTINGS
# nextflow run ~/00_scripts/nextflow/RNAseq_NAC  \
# 	--fastqPath $AnalysisDir/data/S574/ \
# 	--outPath $AnalysisDir/241010_gene_expr/test_trim/ \
# 	--STARidxPath $AnnoDir/STARidx \
# 	--gtfPath $AnnoDir/nextflow \
# 	--gtfFile genes.TAIR10.47.gtf \
#         --pairedEnd \
# 	--exprNamePE  '*{1,2}_001.fastq.gz' \
# 	 --testRUN  --trim \
# 	-w ./work_expr -resume
#
# ###
# nextflow run ~/00_scripts/nextflow/RNAseq_NAC  \
# 	--fastqPath $AnalysisDir/data/S574/ \
# 	--outPath $AnalysisDir/241010_gene_expr/test/ \
# 	--STARidxPath $AnnoDir/STARidx \
# 	--gtfPath $AnnoDir/nextflow \
# 	--gtfFile genes.TAIR10.47.gtf \
#         --pairedEnd \
# 	--exprNamePE  '*{1,2}_001.fastq.gz' \
# 	 --testRUN  \
# 	-w ./work_expr -resume
