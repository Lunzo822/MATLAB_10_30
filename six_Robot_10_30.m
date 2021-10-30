% %采用标准D_H建模
theta1 = 0; d1 = 191.99;    a1 = 121.16;    alpha1 = -pi/2; %1坐标系→2坐标系：沿z1轴平移d1→沿x1轴平移a1→绕x1轴旋转-90°→2坐标系；
theta2 = 0; d2 = 0;         a2 = 850.94;    alpha2 = 0;     %2坐标系→3坐标系：此处对于z2轴有一定的旋转角度，暂且不管，沿x2轴平移a2即可；
theta3 = 0; d3 = 0;         a3 = 482.6;     alpha3 = 0;     %3坐标系→4坐标系：沿x3轴平移a3→4坐标系；
theta4 = 0; d4 = 0;         a4 = 133.35;    alpha4 = pi/2;  %4坐标系→5坐标系：沿x4轴平移a4→绕x4轴旋转90°→5坐标系；
theta5 = 0; d5 = 0;         a5 = 0;         alpha5 = -pi/2; %5坐标系→6坐标系： 由于6坐标系的z6轴是旋转轴，所以只需绕x5轴旋转-90°→6坐标系；
theta6 = 0; d6 = 380.9;     a6 = 0;         alpha6 = 0;     %6坐标系→手抓坐标系：这两个坐标系名义上是重合的，但是需要沿着z6轴平移一段距离d6；

L(1) = Link([theta1,d1,a1,alpha1]);L(1).qlim=[-pi,pi];
L(2) = Link([theta2,d2,a2,alpha2]);L(2).qlim=[-pi/6,pi/2];
L(3) = Link([theta3,d3,a3,alpha3]);L(3).qlim=[-pi/2,pi/2];
L(4) = Link([theta4,d4,a4,alpha4]);L(4).qlim=[-pi/2,pi/2];
L(5) = Link([theta5,d5,a5,alpha5]);L(5).qlim=[-pi/2,pi/2];
L(6) = Link([theta6,d6,a6,alpha6]);L(6).qlim=[-pi,pi];

six_Robot=SerialLink(L,'name','six_Robot');
six_Robot.teach; 