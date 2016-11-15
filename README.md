## Forward Implementation of SqueezeNet
SqueezeNet is a Convolutional Neural Network developed by Iandola et al. This CNN yields AlexNet level accuracy with 50X fewer parameters. In this project, we implement the forward path of this network in MATLAB. The required parameters and intermediate results are included in the project. The project doesn't need Caffe or any external library.

## How to run

1. Download the project
2. Open SqueezeNetFWD.m in MATLAB and run it
The projects will be executed with a default input. You should see the accuracy numbers (difference between the current implementation and default implementation).

## Input

If you want to change the input image, change the file address (input_file) in Confix.txt file. Please notice that when you change the input image, you should set the (cmp) parameter (in the Confix.txt) file to zero. (Why? The intermediate results which are available in the project are for the default image. If you change the default image, you cannot compare intermediate results. However, the network output is always correct.)

## Contact

mmotamedi@ucdavis.edu

## Citing
This project is devloped as a part of the following research. If the project
helped your research, please kindly cite the paper:
```
Mohammad Motamedi, Philipp Gysel, Venkatesh Akella and Soheil Ghiasi, “Design Space Exploration of FPGA-Based Deep Convolutional Neural Network”, IEEE/ACM Asia-South Pacific Design Automation Conference (ASPDAC), January 2016.
```