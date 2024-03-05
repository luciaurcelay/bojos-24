#!/bin/bash

cd ~
cd bojos-notebooks
SUBMITTED=$(sbatch deep-learning-launcher.sh)
SPID=$(echo ${SUBMITTED} | tr -s ' ' | cut -d ' ' -f 4)
RUNNING=$(squeue | grep ${SPID} | tr -s ' ' | cut -d ' ' -f 6)

while [ ${RUNNING} != "R" ]
do
  echo "Jupyter notebook server still not up. Waiting 10 seconds more..."
  sleep 10
  RUNNING=$(squeue | grep ${SPID} | tr -s ' ' | cut -d ' ' -f 6)
done

echo "Jupyter notebook server up. Preparing cluster port for SSH tunneling..."
sleep 10
./expose-jupyter.sh
