# a variable that was passed from the submission script to the R script. In this case, the array iteration
task_id <- commandArgs(trailingOnly = TRUE)
task_id <- as.numeric(task_id[1])

# do something, for example's sake
cat('task_id is', task_id)

# for actual useful work, I recommend using task_id to specify a row of a parameters file for this individual iteration of the slurm array to work on. 

# e.g.
# params <- read_csv('parameters_file.csv')
# data_to_use <- params$dataset[task_id]
# some_parameter <- params$parameter[task_id]

# do something with those values

# save the output
# output_filename <- paste0('data/processed_data/', data_to_use, '_', some_parameter, '.csv')
# write_csv(output_file, path = output_filename)