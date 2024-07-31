# ztf-lfi-demo
A demo on likelihood free inference in gravitational wave astronomy for the 2024 ZTF summer school 

# Getting Started
First build the container - you must have `apptainer` installed on your machine

```console
apptainer build demo.sif apptainer.def
```

Next to launch the notebook, run  

```console
APPTAINERENV_HDF5_USE_FILE_LOCKING=FALSE APPTAINERENV_CUDA_VISIBLE_DEVICES=0,1 \
    apptainer run --bind .:/opt/demo --nv \
    demo.sif jupyter lab \
        --ip 0.0.0.0 \
        --port 8858 \
        --no-browser \
        --NotebookApp.token=''
```

Changing the `APPTAINERENV_CUDA_VISIBLE_DEVICES` variable depending on your machine. 

You can now access the notebook at `localhost:8858` in your browser