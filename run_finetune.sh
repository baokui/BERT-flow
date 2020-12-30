export OUTPUT_PARENT_DIR="./exp"
export GLUE_DIR="/search/odin/guobk/vpa/Data_NLP/glue_data/"
export CACHED_DIR=${OUTPUT_PARENT_DIR}/cached_data
mkdir ${CACHED_DIR}

export RANDOM_SEED=1234
export CUDA_VISIBLE_DEVICES=1
export BERT_NAME="large"
export TASK_NAME="ALLNLI"
unset INIT_CKPT
bash scripts/train_siamese.sh train \
"--exp_name=exp_${BERT_NAME}_${RANDOM_SEED} \
--num_train_epochs=1.0 \
--learning_rate=2e-5 \
--train_batch_size=16 \
--cached_dir=${CACHED_DIR}"