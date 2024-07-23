#!/bin/bash

#SBATCH --job-name=env build # the name for the cluster scheduler
#SBATCH --time=00:10:00 # Maximum allowed runtime per iteration
#SBATCH --mem-per-cpu=7G
#SBATCH --output=logfiles/example_%A_%a.out # the name of the output files
#SBATCH --mail-type=ALL
#SBATCH --mail-user=david.hemprich-bennett@biology.ox.ac.uk


module load Anaconda3

export CONPREFIX=$DATA/conda_envs/temp
conda create --prefix $CONPREFIX
source activate $CONPREFIX
conda env update --file environment.yml --prune

mkdir logfiles
