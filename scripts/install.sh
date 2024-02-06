#!/bin/bash
set -e

# Function to install Miniconda if not already installed
install_miniconda() {
    if ! command -v conda &> /dev/null; then
        # Install miniconda(https://docs.conda.io/en/latest/miniconda.html)
        wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
        bash Miniconda3-latest-Linux-x86_64.sh -b
        rm Miniconda3-latest-Linux-x86_64.sh
        export PATH="$HOME/miniconda3/bin:$PATH"
        echo 'export PATH="$HOME/miniconda3/bin:$PATH"' >> ~/.bashrc
        source ~/.bashrc
    else
        echo "Miniconda is already installed."
    fi
}

# Function to create a conda environment if not already created
create_conda_environment() {
    if ! conda env list | grep -q "hundzula"; then
        conda create -n hundzula python=3.11 --yes
    else
        echo "Conda environment 'hundzula' already exists."
    fi
}

# Function to install poetry if not already installed
install_poetry() {
    if ! command -v poetry &> /dev/null; then
        curl -sSL https://install.python-poetry.org | python3 -
    else
        echo "Poetry is already installed."
    fi
}

# Install common os dependencies required for data science projects
sudo apt-get update -y
sudo apt-get install -y unzip

# Call the functions
install_miniconda
create_conda_environment
conda activate hundzula
install_poetry


if [ $? -eq 0 ]; then
    echo "Installation successful."
    exit 0
else
    echo "Installation failed."
    exit 1
fi
