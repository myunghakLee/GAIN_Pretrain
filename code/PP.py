import time

import matplotlib
import matplotlib.pyplot as plt
import torch
from torch import nn
from torch import optim

from config import *
from data import DGLREDataset, DGLREDataloader, BERTDGLREDataset
from models.GAIN import GAIN_GloVe, GAIN_BERT
from test import test
from utils import Accuracy, get_cuda, logging, print_params

matplotlib.use('Agg')

# for ablation
# from models.GAIN_nomention import GAIN_GloVe, GAIN_BERT

import os
print('processId:', os.getpid())
print('prarent processId:', os.getppid())
opt = get_opt()


# +
class GAIN_Original:
    def __init__(self):
        self.activation='relu'
        self.batch_size=5
        self.bert_fix=False
        self.bert_hid_size=768
        self.bert_path='../PLM/bert-base-uncased'
        self.checkpoint_dir='checkpoint'
        self.clip=-1
        self.coslr=True
        self.data_word_vec=np.array([[ 0.      ,  0.      ,  0.      ,  0.      ,  0.,             0.      ]])
        self.dev_set='../data/dev.json'
        self.dev_set_save='../data/prepro_data/dev_BERT.pkl'
        self.dropout=0.6
        self.entity_id_pad=0
        self.entity_id_size=20
        self.entity_type_num=7
        self.entity_type_pad=0
        self.entity_type_size=20
        self.epoch=300
        self.fig_result_dir='fig_result'
        self.finetune_word=False
        self.gcn_dim=808
        self.gcn_layers=2
        self.input_theta=-1
        self.k_fold='none'
        self.log_step=20
        self.lr=0.001
        self.lstm_dropout=0.1
        self.lstm_hidden_size=32
        self.max_entity_num=80
        self.mention_drop=False
        self.model_name='GAIN_BERT_base'
        self.negativa_alpha=4.0
        self.nlayers=1
        self.pre_train_word=False
        self.pretrain_model=''
        self.relation_nums=97
        self.save_model_freq=3
        self.test_batch_size=16
        self.test_epoch=5
        self.test_set='../data/test.json'
        self.test_set_save='../data/prepro_data/test_BERT.pkl'
        self.train_set='../data/train_annotated.json'
        self.train_set_save='../data/prepro_data/train_BERT.pkl'
        self.use_entity_id=True
        self.use_entity_type=True
        self.use_model='bert'
        self.vocabulary_size=200000
        self.weight_decay=0.0001
        self.word_emb_size=10
        self.word_pad=0

import numpy as np
                                
# -

from models.GAIN import GAIN_GloVe, GAIN_BERT
opt = GAIN_Original()
model_original = GAIN_BERT(opt)

# +
optSemEval = opt
optSemEval.use_entity_id = False
optSemEval.use_entity_type = False
optSemEval.entity_type_num = 1

model_SemEval = GAIN_BERT(opt)
# -

model_SemEval

if __name__ == '__main__':
    print('processId:', os.getpid())
    print('prarent processId:', os.getppid())
    opt = get_opt()
    print(json.dumps(opt.__dict__, indent=4))
    opt.data_word_vec = word2vec
    train(opt)
