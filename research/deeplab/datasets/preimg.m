clear;

% 将anno的图片进行预处理，[1-150]映射到[0-149],原先的ignore label 0变为255

data_root = '/home/tony/app/paper/models/research/deeplab/datasets/ADE20K/ADEChallengeData2016'; %root path of dataset
eval_list = 'list/ADE20K_train.txt';
pathAnno = data_root;
list = importdata(fullfile(data_root,eval_list));
for i = 1:size(list,1)
    str=strsplit(list{i});
    fileAnno = fullfile(pathAnno, str{2});
    imAnno = imread(fileAnno);
    imAnno(imAnno==0) = 255;
    imAnno = imAnno-1;
    imAnno(imAnno==254) = 255;
    imwrite(imAnno,fileAnno);
end

eval_list = 'list/ADE20K_val.txt';
pathAnno = data_root;
list = importdata(fullfile(data_root,eval_list));
for i = 1:size(list,1)
    str=strsplit(list{i});
    fileAnno = fullfile(pathAnno, str{2});
    imAnno = imread(fileAnno);
    imAnno(imAnno==0) = 255;
    imAnno = imAnno-1;
    imAnno(imAnno==254) = 255;
    imwrite(imAnno,fileAnno);
end