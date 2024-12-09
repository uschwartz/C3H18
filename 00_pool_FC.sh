AnalysisDir="/Volumes/PromisePegasus/_Service_/S048_C3H18_RNAseq/data/S574"
outDir="/Volumes/PromisePegasus/_Service_/S048_C3H18_RNAseq/data/S574pooled"

mkdir $outDir

cd $AnalysisDir


for entry in *"_FC1_"*".fastq.gz"; do

        echo $entry
        firstID=$(echo $entry| cut -d'_' -f -5)
        secondID=$(echo $entry| cut -d'_' -f 7-9)

        cat $firstID"_FC1_"$secondID $firstID"_FC2_"$secondID > $outDir"/"$firstID"_pool_"$secondID

done
