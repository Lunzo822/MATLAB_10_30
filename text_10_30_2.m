%例2.23
%2个自由度的机械臂

%定义变量
syms a1 a2 theta1 theta2
syms nx ny nz ox oy oz ax ay az px py pz

%1号坐标系相对于0号坐标系的变换矩阵
T01 = [cos(theta1)  -sin(theta1)    0   a1*cos(theta1);
       sin(theta1)  cos(theta1)     0   a1*sin(theta1);
       0            0               1   0;
       0            0               0   1];

%2号坐标系相对于1号坐标系的变换矩阵   
T12 = [cos(theta2)  -sin(theta2)    0   a2*cos(theta2);
       sin(theta2)  cos(theta2)     0   a2*sin(theta2);
       0            0               1   0;
       0            0               0   1];

%借助数学公式简化公式
%cos(theta1+theta2)=cos(theta1)*cos(theta2)-sin(theta1)*sin(theta2);
%sin(theta1+theta2)=sin(theta1)*cos(theta2)+cos(theta1)*sin(theta2);
   
%2号坐标系相对于0号坐标系的总变换矩阵
T02=T01*T12;

%简化矩阵
simplify(T02)

%%%%%%%%%%
%正运动学%
%%%%%%%%%%
%建立模型
Two_Link=SerialLink(T02);

%设置角度
%Two_Link.fkine(pi/2);

%画图
%Two_Link.plot(pi/2);

%%%%%%%%%%
%逆运动学%
%%%%%%%%%%
%末端位置姿态
T=[nx ox ax pz;
   ny oy ay oy;
   nz oz az pz;
   0  0  0  1];

%左乘逆矩阵
T1=inv(T01)*T;
T2=T12;

%简化矩阵
simplify(T1)
simplify(T2)

