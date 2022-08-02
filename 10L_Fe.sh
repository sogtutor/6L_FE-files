#!/bin/sh
#SBATCH --partition=batch --qos=240c-1h_batch
#SBATCH --job-name="10L_Fe"
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=8G
#SBATCH --output=%x.%j.out
#SBATCH --mail-user=medemesa@up.edu.ph
#SBATCH --mail-type=ALL

module load qe/6.5_openmpi-4.0.3

####################################################


####################################################

export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

mpirun -np 16 pw.x -npools 4 -ntg 2 -ndiag 8 -input 10L_Fe.in > 10L_Fe.out