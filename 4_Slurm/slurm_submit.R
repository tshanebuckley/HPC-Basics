
# ^add your shebang here!

# Note that it's always a good idea to comment your blocks of code for anyone who may want to run,
# update, or modify it in the future!

# Print out some information to the user
print("Hello from R!")
print("Submitting your slurm job!")

# Submit our slurm job using R to make a system call for the Slurm command 'srun'
system('echo "Running..."')
# create the string to run our slurm job
job_str <- "sbatch --wrap='echo Hello from Slurm!' --cpus-per-task=1 --ntasks=1 --job-name=Hello_Slurm --output=slurm.out"
# submit the job
system(job_str)
system('echo "Submitted!"')
