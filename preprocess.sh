#!/bin/bash


python src/preprocess_dependency.py \
    --train_file_path data/dev.txt \
    --val_file_path data/dev.txt \
    --test_file_path data/dev.txt \
    --output_dir data/preprocessed/dependency/ \
    --convert_method exponential \
    --min_n_terminals 3 \
    --seed 42
