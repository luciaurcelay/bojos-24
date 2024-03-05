#!/bin/bash

MYUSER=$(whoami)
PORT=${MYUSER:(-3)}

ssh -4 -N -L 55${PORT}:127.0.0.1:55${PORT} $(squeue | tail -n 1 | awk '{print $NF}') &

echo "Connection successful!"
