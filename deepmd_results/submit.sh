#!/bin/bash
#SBATCH --job-name=JOB        #Job name
#SBATCH --nodes=2              
#SBATCH --tasks-per-node=48  #Number of core per nodes
#SBATCH --error=jobjob.%J.err    #Name of output file
#SBATCH --output=jobjob.%J.out   #Name of error file
#SBATCH --time=72:00:00       #Time take to execute the program
#SBATCH --partition=small      #specifies queue name(standard is the default part$


export OMP_NUM_THREADS=10

conda init bash
conda activate deepmd

dp test -m masterpot.pb -s ../../00.data/validation_data -n 500 -d results >> results.out

