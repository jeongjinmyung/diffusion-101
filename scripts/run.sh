#!/bin/bash

base_model=("rectflow" "ddpm")

for base in ${base_model[@]};
do
    config_path=./configs/${base}_AFHQv2.yaml
    echo ${config_path}
    python ${base}_train.py --config ${config_path}
done