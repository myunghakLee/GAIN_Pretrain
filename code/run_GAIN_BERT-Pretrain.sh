#! /bin/bash
export CUDA_VISIBLE_DEVICES=$1
export DataRate=$2

# -------------------GAIN_BERT_base Training Shell Script--------------------

if true; then
  model_name=GAIN_BERT_Pretrain
  lr=0.001
  batch_size=5
  test_batch_size=16
  epoch=6000
  test_epoch=10
  log_step=20
  save_model_freq=30
  negativa_alpha=4
  DataRate="_0.1"  
    
    
  nohup python3 -u train.py \
    --train_set ../SemEval2DocRED/train_annotated${DataRate}.json \
    --train_set_save ../SemEval2DocRED/prepro_data/train_BERT.pkl \
    --dev_set ../SemEval2DocRED/dev.json \
    --dev_set_save ../SemEval2DocRED/prepro_data/dev_BERT.pkl \
    --test_set ../SemEval2DocRED/test.json \
    --test_set_save ../SemEval2DocRED/prepro_data/test_BERT.pkl \
    --use_model bert \
    --model_name ${model_name} \
    --lr ${lr} \
    --batch_size ${batch_size} \
    --test_batch_size ${test_batch_size} \
    --epoch ${epoch} \
    --test_epoch ${test_epoch} \
    --log_step ${log_step} \
    --save_model_freq ${save_model_freq} \
    --negativa_alpha ${negativa_alpha} \
    --gcn_dim 808 \
    --gcn_layers 2 \
    --bert_hid_size 768 \
    --bert_path ../PLM/bert-base-uncased \
    --use_entity_type \
    --use_entity_id \
    --dropout 0.6 \
    --activation relu \
    --coslr \
    --pretrain_model "GAIN_BERT_base_best.pt" \
    --transfer_learning \
    >logs/train_${model_name}.log 2>&1 &
fi

# -------------------GAIN_BERT_large Training Shell Script--------------------

# +
# if false; then
#   model_name=GAIN_BERT_large
#   lr=0.001
#   batch_size=5
#   test_batch_size=16
#   epoch=300
#   test_epoch=5
#   log_step=20
#   save_model_freq=3
#   negativa_alpha=4

#   nohup python3 -u train.py \
#     --train_set ../data/train_annotated.json \
#     --train_set_save ../data/prepro_data/train_BERT.pkl \
#     --dev_set ../data/dev.json \
#     --dev_set_save ../data/prepro_data/dev_BERT.pkl \
#     --test_set ../data/test.json \
#     --test_set_save ../data/prepro_data/test_BERT.pkl \
#     --use_model bert \
#     --model_name ${model_name} \
#     --lr ${lr} \
#     --batch_size ${batch_size} \
#     --test_batch_size ${test_batch_size} \
#     --epoch ${epoch} \
#     --test_epoch ${test_epoch} \
#     --log_step ${log_step} \
#     --save_model_freq ${save_model_freq} \
#     --negativa_alpha ${negativa_alpha} \
#     --gcn_dim 1064 \
#     --gcn_layers 2 \
#     --bert_hid_size 1024 \
#     --bert_path ../PLM/bert-large-uncased \
#     --use_entity_type \
#     --use_entity_id \
#     --dropout 0.6 \
#     --activation relu \
#     --coslr \
#     >logs/train_${model_name}.log 2>&1 &
# fi
# -

# -------------------additional options--------------------

# option below is used to resume training, it should be add into the shell scripts above
# --pretrain_model checkpoint/GAIN_BERT_base_10.pt \
