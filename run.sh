APPTAINERENV_HDF5_USE_FILE_LOCKING=FALSE APPTAINERENV_CUDA_VISIBLE_DEVICES=0,1 \
    apptainer run --bind .:/opt/demo --bind /cvmfs:/cvmfs --nv \
    demo.sif jupyter lab \
        --ip 0.0.0.0 \
        --port 8858 \
        --no-browser \
        --NotebookApp.token=''
