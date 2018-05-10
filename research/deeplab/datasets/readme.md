这里存放数据集和数据处理相关的代码

- ADE20K文件夹下存放数据集(图片 列表 标注 根据标注转化得到tfrecord文件)和实验结果(模型 测试得到的图片 日志)
- download_and_convert_ade20K.sh是需要直接执行的脚本，将下载ADE20K数据集，使用preimg.m进行预处理，并使用build_ade20K_data.py将其转化为tf_record文件