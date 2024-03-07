#!/bin/bash
SUBMITTED=$(sbatch deep-learning-launcher.sh)
SPID=$(echo ${SUBMITTED} | tr -s ' ' | cut -d ' ' -f 4)
RUNNING=$(squeue | grep ${SPID} | tr -s ' ' | cut -d ' ' -f 6)

while [ ${RUNNING} != "R" ]
do
  echo "Jupyter notebook server still not up. Waiting 10 seconds more..."
  sleep 10
  RUNNING=$(squeue | grep ${SPID} | tr -s ' ' | cut -d ' ' -f 6)
done

MYUSER=$(whoami)
PORT=${MYUSER:(-3)}
HOST=$(squeue | tail -n 1 | awk '{print $NF}')
echo "Jupyter notebook server up at port $PORT and host $HOST"
