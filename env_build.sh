#!/bin/bash

#SBATCH --job-name=env_build # the name for the cluster scheduler
#SBATCH --time=00:30:00 # Maximum allowed runtime per iteration
#SBATCH --mem-per-cpu=7G
#SBATCH --output=logfiles/env_build_%A.out # the name of the output files
#SBATCH --mail-type=ALL
#SBATCH --mail-user=david.hemprich-bennett@biology.ox.ac.uk


module load Anaconda3

# Make a string variable corresponding to your $DATA directory, then conda_envs/lepidoptera_sdms. E.g. for Dave the absolute path is /data/zool-mosquito_ecology/zool2291/conda_envs/lepidoptera_sdms

export CONPREFIX=$DATA/conda_envs/lepidoptera_sdms
# create an empty conda environment at this path.
# N.B. for this to work you'll need to have a directory in your $DATA directory
# called conda_envs. Create it with mkdir if you don't have one yet.
conda create --prefix $CONPREFIX
# activate your new conda environment
source activate $CONPREFIX
# install all of your desired packages, from the channels conda-forge, defaults
# and  r. The --yes flag confirms in advance that you want to install them, as 
# otherwise conda assumes that you're working interactively

conda install R r-terra r-tidyterra r-tidyverse r-Hmisc r-geometry r-rootSolve r-MESS r-readr r-lubridate r-ggplot2 r-ggtext r-mgcv r-MASS r-modeest r-rnaturalearth r-sf -c conda-forge -c defaults -c r --yes

