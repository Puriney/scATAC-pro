#!/bin/bash


mtx_file=$1
 
# reading configure file
curr_dir=`dirname $0`
source ${curr_dir}/read_conf.sh
read_conf "$2"
read_conf "$3"

output_dir=${OUTPUT_DIR}/downstream_analysis/${CELL_CALLER}
mkdir -p $output_dir

curr_dir=`dirname $0`

${R_PATH}/Rscript --vanilla ${curr_dir}/src/clustering.R $mtx_file $CLUSTERING_METHOD $K_CLUSTERS $output_dir $GENOME_NAME $TSS 

if [ "$prepCello" = "TRUE" ]; then
do
    seurat_file=${output_dir}/seurat_obj.rds
    ${R_PATH}/Rscript --vanilla ${curr_dir}/src/interface2cello.R $seurat_file
done
