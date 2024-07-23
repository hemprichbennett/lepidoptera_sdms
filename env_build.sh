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
conda conda install R r-terra r-tidyterra r-tidyverse r-Hmisc r-geometry r-rootSolve r-MESS r-readr r-lubridate r-ggplot2 r-ggtext r-mgcv r-MASS r-modeest r-rnaturalearth r-sf

