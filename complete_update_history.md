## Complete Update History
- Current version: 1.2.0
    * add metadata to seurat obj
    * update downstream tutorial
- VERSION **1.1.4** released
    * *demplx_fastq*: the input supports directory path of 10x fastq files
- VERSION: 1.1.3 released
    * *runGO*: update background genes to be all genes associated with any peak
- May, 2020 --VERSION **1.1.2** released
    * *integrate*: add VFACS (Variable Features Across ClusterS) option for the integration module,
      **which reselect variable features across cell clusters after an initial clustering, followed by 
        another round of dimension reduction and clustering**, specify *Integrate_by = VFACS* in configure file
    * *clustering*: filter peaks before clustering (accessible in less than 0.5% of cells) and
       remove rare peaks (accessible in less than 1% of cells) from the variable features list
    * *reConsMtx*: enable specifying a path for saving reconstructed matrix (optional)
- VERSION **1.1.1** released
- March,April, 2020
    * *get_mtx*: it requires two input files: a fragments.txt file and a peak file, separated by comma
    * annotate peak as overlapped with a gene Tss if the corresponding distance <= 1000bp; mark peak with a gene if their distance <= 100kb
    * update DA, fix bug of using covariate
    * using mefa4::Melt instead of melt -- better for large sparse matrix
    * add PEAK_CALLER prefix to qc_per_barcode.txt filename
    * fix a bug of file location of tmpJob when calling cells
- VERSION **1.1.0** released
- Feb, 2020
    * *integrate* module enables 3 options: seurat, harmony and pool
    * new module *visualize*, allowing interactively explore and analyze the data
    * *footprint* module supports one-vs-rest comparison and provides result in heatmap
    * module *runDA* changed to use group name as the input (e.g. "0:1,2" or "one,rest")
    * installed rgt-hint (for footprinting analysis) using miniconda3
    * added module *process_with_bam*, allowing processing from aggregated bam file
    * enabled data integration from peaks files, assuming all data sets are processed using scATAC-pro. Output matrix with the same merged peaks/features and the previously called cells, along with an integrated seurat object
    * added new parameters in the configuration file: Top_Variable_Features, REDUCTION, nREDUCTION
    * enabled all clustering methods mentioned in the manuscript, along with kmeans clustering on principal components
    * file path changed to like downstreame_analysis/PEAK_CALLER/CELL_CALLER/..., indicating peak caller
- Jan, 2020
    * added a new module *mergePeaks* to merge different peak files called from different data sets
    * added a new module *reConstMtx* to reconstruct peak-by-cell matrix given a peak file, a fragment file and a barcodes.txt file
- Dec, 2019
    * corrected an error due to using older version of chromVAR
    * corrected a bug for demultiplexing multiple index files
    * added a module *convert10xbam* to convert 10x position sorted bam file to scATAC-pro file format
    * updated module *get_bam4Cells*, with the inputs as a bam file and a txt file of barcodes, separated by comma

