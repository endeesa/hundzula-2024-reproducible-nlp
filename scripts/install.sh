#!/bin/bash
set -e

# Install common os dependencies required for data science projects
sudo apt-get update -y

# Install unzip
sudo apt-get install -y unzip

# Install miniconda(https://docs.conda.io/en/latest/miniconda.html)
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64.sh
export PATH="$HOME/miniconda3/bin:$PATH"
echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Create a conda environment
conda create -n hundzula python=3.11
source activate hundzula


# (Optional) Install poetry
# curl -sSL https://install.python-poetry.org | python3 -
