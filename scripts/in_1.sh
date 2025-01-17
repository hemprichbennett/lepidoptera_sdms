#!/bin/bash

#SBATCH --job-name=example # the name for the cluster scheduler
#SBATCH --time=00:05:00 # Maximum allowed runtime per iteration
#SBATCH --mem-per-cpu=1G
#SBATCH --array=1-10 # the number of iterations
#SBATCH --output=logfiles/example_%A_%a.out # the name of the output files
#SBATCH --mail-type=ALL
#SBATCH --mail-user=david.hemprich-bennett@biology.ox.ac.uk

# get rid of any pre-loaded modules
module purge
# load anaconda
module load Anaconda3//2020.11

# activate your conda environment
source activate $DATA/conda_envs/lepidoptera_sdms

# use R on scripts/example_script.R, passing it the curent array task ID as a variable for R to use
Rscript scripts/example_script.R ${SLURM_ARRAY_TASK_ID} 
