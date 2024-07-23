#!/bin/bash

#SBATCH --job-name=example # the name for the cluster scheduler
#SBATCH --time=00:10:00 # Maximum allowed runtime per iteration
#SBATCH --mem-per-cpu=7G
#SBATCH --array=1-10 # the number of iterations
#SBATCH --output=logfiles/example_%A_%a.out # the name of the output files
#SBATCH --mail-type=ALL
#SBATCH --mail-user=david.hemprich-bennett@biology.ox.ac.uk

module purge
module load Anaconda3//2020.11

source CONPREFIX=$DATA/conda_envs/lepidoptera_sdms

Rscript scripts/example_script.R ${SLURM_ARRAY_TASK_ID} 
