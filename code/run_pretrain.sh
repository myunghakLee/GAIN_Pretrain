# +
rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.01"
sudo chmod 777 logs/train_TransferLearninig_0.01.log
tail -f -n 2000 logs/train_TransferLearninig_0.01.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.05"
sudo chmod 777 logs/train_TransferLearninig_0.05.log
tail -f -n 2000 logs/train_TransferLearninig_0.05.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.1"
sudo chmod 777 logs/train_TransferLearninig_0.1.log
tail -f -n 2000 logs/train_TransferLearninig_0.1.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.2"
sudo chmod 777 logs/train_TransferLearninig_0.2.log
tail -f -n 2000 logs/train_TransferLearninig_0.2.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.3"
sudo chmod 777 logs/train_TransferLearninig_0.3.log
tail -f -n 2000 logs/train_TransferLearninig_0.3.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.4"
sudo chmod 777 logs/train_TransferLearninig_0.4.log
tail -f -n 2000 logs/train_TransferLearninig_0.4.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.5"
sudo chmod 777 logs/train_TransferLearninig_0.5.log
tail -f -n 2000 logs/train_TransferLearninig_0.5.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.6"
sudo chmod 777 logs/train_TransferLearninig_0.6.log
tail -f -n 2000 logs/train_TransferLearninig_0.6.log

rm ../SemEval2DocRED/prepro_data/*
./run_GAIN_BERT-Pretrain.sh 0 "_0.7"
sudo chmod 777 logs/train_TransferLearninig_0.7.log
tail -f -n 2000 logs/train_TransferLearninig_0.7.log


