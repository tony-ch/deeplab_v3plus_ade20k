%{
Variables need to be modified: data_root, eval_list;
and the default GPUs used for evaluation are with ID [0:3],
modify variable 'gpu_id_array' if needed.
%}

close all; clc; clear;
data_name = 'ADE20K'; %set to 'VOC2012' or 'cityscapes' for relevant datasets

isVal = true; %evaluation on valset
step = 2000; %equals to number of images divide num of GPUs in testing e.g. 500=2000/4
%step = 1015; %equals to number of images divide num of GPUs in testing e.g. 500=2000/4
%step = 197; %equals to number of images divide num of GPUs in testing e.g. 500=2000/4
%step = 788; %equals to number of images divide num of GPUs in testing e.g. 500=2000/4

data_root = '/home/tony/app/paper/models/research/deeplab/datasets/ADE20K/ADEChallengeData2016/'; %root path of dataset

eval_list = 'list/ADE20K_val.txt'; %evaluation list, refer to lists in folder 'samplelist'
%eval_list = 'list/v1/ADE20K_val_v1_1.txt'; %evaluation list, refer to lists in folder 'samplelist'
%eval_list = 'list/v1/ADE20K_val_v1_2.txt'; %evaluation list, refer to lists in folder 'samplelist'
%eval_list = 'list/v1/ADE20K_val_v1_3.txt'; %evaluation list, refer to lists in folder 'samplelist'

save_root = '/home/tony/app/paper/models/research/deeplab/datasets/ADE20K/exp_v1_120000/vis_weighted/raw_segmentation_results/'; %root path to store the result image
%save_root = '/home/tony/app/paper/models/research/deeplab/datasets/ADE20K/exp_v1_40000/vis_weighted/raw_segmentation_results/'; %root path to store the result image

fea_cha = 150; %number of classes
data_class = 'objectName150.mat';

save_gray_folder = [save_root]; %path for predicted gray image

if(isVal)
   eval_acc(data_name,data_root,eval_list,save_gray_folder,data_class,fea_cha);
end
