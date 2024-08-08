clc
clear;
close all;
% addpath('./tcp定点旋转精度测试数据')
filename0 = "lineTrackerCali_RY_comp.csv";
filename1 = "lineTrackerCali_RY.csv";
data0 = csvread(filename0)*1000;
data1 = csvread(filename1)*1000;

X0 = data0(:,7);
Y0 = data0(:,8);
Z0 = data0(:,9);
meanX0 = mean(X0);
meanY0 = mean(Y0);
meanZ0 = mean(Z0);
% meanX0 = X0(1);
% meanY0 = Y0(1);
% meanZ0 = Z0(1);
errorX0 = X0 - meanX0;
errorY0 = Y0 - meanY0;
errorZ0 = Z0 - meanZ0;

X1 = data1(:,7);
Y1 = data1(:,8);
Z1 = data1(:,9);
meanX1 = mean(X1);
meanY1 = mean(Y1);
meanZ1 = mean(Z1);
% meanX1 = X1(1);
% meanY1 = Y1(1);
% meanZ1 = Z1(1)
errorX1 = X1 - meanX1;
errorY1 = Y1 - meanY1;
errorZ1 = Z1 - meanZ1;

distance0 = sqrt(errorX0.*errorX0+errorY0.*errorY0+errorZ0.*errorZ0);
distance1 = sqrt(errorX1.*errorX1+errorY1.*errorY1+errorZ1.*errorZ1);
figure()
hold on
plot(distance0,'-*')
plot(distance1,'-o')
xlabel("试验点次序(相邻两点姿态变化：10°)")
ylabel("TCP均值误差(mm)");
title("Ry定点旋转测试");
legend("全参补偿","正常标定")
mean(distance0)
mean(distance1)
