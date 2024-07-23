#!/bin/bash
module load Anaconda3

export CONPREFIX=$DATA/conda_envs/temp
conda create --prefix $CONPREFIX
source activate $CONPREFIX
conda env update --file environment.yml --prune