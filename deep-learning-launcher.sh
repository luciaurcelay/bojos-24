#!/bin/bash
#SBATCH --job-name="bojos"

#SBATCH --qos=training

#SBATCH --workdir=.

#SBATCH --output=bojos_%j.out

#SBATCH --error=bojos_%j.err

#SBATCH --ntasks=4

#SBATCH --time=02:00:00

module purge;
module load gcc/8.1.0 impi/2018.1 mkl/2018.1 opencv/4.1.2 python/3.6.4_ML

MYUSER=$(whoami)
PORT=${MYUSER:(-3)}

JUPYTER_TOKEN=bojos jupyter notebook --no-browser --ip=0.0.0.0 --port 55${PORT}
