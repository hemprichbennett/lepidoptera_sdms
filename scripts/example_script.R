# parameters for use on the cluster
task_id <- commandArgs(trailingOnly = TRUE)
task_id <- as.numeric(task_id[1])

cat('task_id is', task_id)

# use task_id to specify a row of a parameters file for this individual iteration of the slurm array to work on. 
