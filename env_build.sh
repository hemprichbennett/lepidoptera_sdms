#!/bin/bash

#SBATCH --job-name=env_build # the name for the cluster scheduler
#SBATCH --time=00:30:00 # Maximum allowed runtime per iteration
#SBATCH --mem-per-cpu=7G
#SBATCH --output=logfiles/env_build_%A.out # the name of the output files
#SBATCH --mail-type=ALL
#SBATCH --mail-user=david.hemprich-bennett@biology.ox.ac.uk


module load Anaconda3

export CONPREFIX=$DATA/conda_envs/lepidoptera_sdms
conda create --prefix $CONPREFIX
source activate $CONPREFIX
conda env update --file environment.yml --prune

