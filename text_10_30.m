clc;
clear;
%����������ģ��
%L=Link([theta d a alpha])
L1=Link([0 0.1065 0      pi/2],'modified');%��������1
L2=Link([0 0      -0.408 0],'modified');%��������2
L3=Link([0 0      -0.382 0],'modified');%��������3
L4=Link([0 0.1109 0      pi/2],'modified');%��������4
L5=Link([0 0.1109 0      -pi/2],'modified');%��������5
L6=Link([0 0.0841 0      0],'modified');%��������6
six_robot=SerialLink([L1 L2 L3 L4 L5 L6]);
theta=[pi/2 -2*pi/3 -2*pi/3 0 2*pi/3 0];
six_robot.plot(theta);
%six_robot.display();
%six_robot.teach;%teach����
%T=fkine(six_robot,theta);
%Q=six_robot.ikine(T);
