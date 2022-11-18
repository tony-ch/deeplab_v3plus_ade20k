#!/bin/sh

WORK_DIR="/home/tony/app/paper/models/research/deeplab"

export CUDA_HOME=/usr/local/cuda
export PATH=${CUDA_HOME}/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=${CUDA_HOME}/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export PYTHONPATH=/home/tony/app/caffe/python${PYTHONPATH:+:${PYTHONPATH}}

copy_model(){
    # $1 base iter
    # $2 plus iter
    # $3 data class
    cd ${WORK_DIR}
    cd datasets/ADE20K/exp_v1_$1/
    cp -a train_on_trainval_set train_on_trainval_set_$1_$2_f0_$3
}

rm_model(){
    # $1 base iter
    cd ${WORK_DIR}
    cd datasets/ADE20K/exp_v1_$1/
    rm -r train_on_trainval_set
}

train(){
    # $1 base iter
    # $2 plus iter
    # $3 data class
    cd ${WORK_DIR}
    bash ade20k_task.sh $1 $2 $3 >> log/train_$1_$2_$3.log 2>&1
}

send_mail(){
    echo "task base $1 plus $2 class $3 $4" 
    echo "task base $1 plus $2 class $3 $4" | mail -s "task $4" -t 2543919739@qq.com
}


send_mail 120000_rnd 40000 v1_rnd_0 begin
train 120000_rnd 40000 v1_rnd_0
send_mail 120000_rnd 40000 v1_rnd_0 finised
copy_model 120000_rnd 40000 v1_rnd_0

sleep 300

send_mail 120000_rnd 80000 v1_rnd_0 begin
train 120000_rnd 80000 v1_rnd_0
send_mail 120000_rnd 80000 v1_rnd_0 finised
copy_model 120000_rnd 80000 v1_rnd_0

sleep 300

send_mail 120000_rnd 120000 v1_rnd_0 begin
train 120000_rnd 120000 v1_rnd_0
send_mail 120000_rnd 120000 v1_rnd_0 finised
copy_model 120000_rnd 120000 v1_rnd_0

sleep 300

send_mail 120000_rnd 160000 v1_rnd_0 begin
train 120000_rnd 160000 v1_rnd_0
send_mail 120000_rnd 160000 v1_rnd_0 finised
copy_model 120000_rnd 160000 v1_rnd_0

sleep 300

send_mail 120000_rnd 180000 v1_rnd_0 begin
train 120000_rnd 180000 v1_rnd_0
send_mail 120000_rnd 180000 v1_rnd_0 finised
copy_model 120000_rnd 180000 v1_rnd_0
rm_model 120000_rnd


sleep 300

send_mail 120000_rnd 36000 v1_rnd_1 begin
train 120000_rnd 36000 v1_rnd_1
send_mail 120000_rnd 36000 v1_rnd_1 finised
copy_model 120000_rnd 36000 v1_rnd_1

sleep 300

send_mail 120000_rnd 40000 v1_rnd_1 begin
train 120000_rnd 40000 v1_rnd_1
send_mail 120000_rnd 40000 v1_rnd_1 finised
copy_model 120000_rnd 40000 v1_rnd_1

sleep 300

send_mail 120000_rnd 80000 v1_rnd_1 begin
train 120000_rnd 80000 v1_rnd_1
send_mail 120000_rnd 80000 v1_rnd_1 finised
copy_model 120000_rnd 80000 v1_rnd_1

sleep 300

send_mail 120000_rnd 120000 v1_rnd_1 begin
train 120000_rnd 120000 v1_rnd_1
send_mail 120000_rnd 120000 v1_rnd_1 finised
copy_model 120000_rnd 120000 v1_rnd_1
rm_model 120000_rnd


sleep 300

send_mail 120000_rnd 40000 v1_rnd_2 begin
train 120000_rnd 40000 v1_rnd_2
send_mail 120000_rnd 40000 v1_rnd_2 finised
copy_model 120000_rnd 40000 v1_rnd_2

sleep 300

send_mail 120000_rnd 80000 v1_rnd_2 begin
train 120000_rnd 80000 v1_rnd_2
send_mail 120000_rnd 80000 v1_rnd_2 finised
copy_model 120000_rnd 80000 v1_rnd_2

sleep 300

send_mail 120000_rnd 120000 v1_rnd_2 begin
train 120000_rnd 120000 v1_rnd_2
send_mail 120000_rnd 120000 v1_rnd_2 finised
copy_model 120000_rnd 120000 v1_rnd_2

sleep 300

send_mail 120000_rnd 144000 v1_rnd_2 begin
train 120000_rnd 144000 v1_rnd_2
send_mail 120000_rnd 144000 v1_rnd_2 finised
copy_model 120000_rnd 144000 v1_rnd_2
rm_model 120000_rnd