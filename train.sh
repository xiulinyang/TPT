#!/bin/bash
#

accelerate launch src/train.py \
    --train_file data/preprocessed/dependency/train.sequential=False.random=False.convert_method=exponential.jsonl \
    --validation_file data/preprocessed/dependency/val.sequential=False.random=False.convert_method=exponential.jsonl \
    --per_device_train_batch_size 32 \
    --per_device_eval_batch_size 32 \
    --num_train_epochs 10 \
    --output_dir experiments/42/ \
    --seed 42 \
    --with_tracking \
    --report_to wandb \
    --attn_loss_weight 0.5 \
    --attn_loss_layers 11 \
    --attn_loss_heads 0 \
    --attn_loss_reduction "none"
