#!/bin/bash
#SBATCH --mem-per-cpu=4096
#SBATCH --time=96:00:00
#SBATCH --job-name=trace03-0
#SBATCH --mail-user=bot4test@mail.com
#SBATCH --mail-type=ALL
#SBATCH --workdir=/work/rarce/rarce/research/francis-trace-molina
#SBATCH --error=/work/rarce/rarce/research/francis-trace-molina/tmperror/main-%A_%a.err
#SBATCH --output=/work/rarce/rarce/research/francis-trace-molina/tmpresults/main-%A_%a.out
#SBATCH --array=0-128%32

# /work/rarce/rarce/research/francis-trace-molina/reed 6 0 10
unbuffer /work/rarce/rarce/research/francis-trace-molina/main  23 $SLURM_ARRAY_TASK_ID 512
