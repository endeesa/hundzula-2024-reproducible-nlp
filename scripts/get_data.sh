#!/bin/bash
set -e

dvc get https://github.com/iterative/dataset-registry get-started/data.xml -o data/raw/data.xml