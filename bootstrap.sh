#!/bin/bash

sudo apt-get install -y git python3-pip python3
cd ~
git clone --depth 1 https://gitlab.hpai.bsc.es/courses/bojos-notebooks
pip3 install jupyter scikit-learn matplotlib numpy seaborn pandas
cd bojos-notebooks
