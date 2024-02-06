#!/bin/bash
set -e

ROOT_DIR=$(pwd)
if [ ! -f $ROOT_DIR/data/raw/data.xml ]; then
    dvc get https://github.com/iterative/dataset-registry get-started/data.xml -o data/raw/data.xml
fi
unzip -o $ROOT_DIR/data/raw/kaggle-spam-collection-data.zip -d $ROOT_DIR/data/raw
