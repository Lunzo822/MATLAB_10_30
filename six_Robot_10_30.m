% %���ñ�׼D_H��ģ
theta1 = 0; d1 = 191.99;    a1 = 121.16;    alpha1 = -pi/2; %1����ϵ��2����ϵ����z1��ƽ��d1����x1��ƽ��a1����x1����ת-90���2����ϵ��
theta2 = 0; d2 = 0;         a2 = 850.94;    alpha2 = 0;     %2����ϵ��3����ϵ���˴�����z2����һ������ת�Ƕȣ����Ҳ��ܣ���x2��ƽ��a2���ɣ�
theta3 = 0; d3 = 0;         a3 = 482.6;     alpha3 = 0;     %3����ϵ��4����ϵ����x3��ƽ��a3��4����ϵ��
theta4 = 0; d4 = 0;         a4 = 133.35;    alpha4 = pi/2;  %4����ϵ��5����ϵ����x4��ƽ��a4����x4����ת90���5����ϵ��
theta5 = 0; d5 = 0;         a5 = 0;         alpha5 = -pi/2; %5����ϵ��6����ϵ�� ����6����ϵ��z6������ת�ᣬ����ֻ����x5����ת-90���6����ϵ��
theta6 = 0; d6 = 380.9;     a6 = 0;         alpha6 = 0;     %6����ϵ����ץ����ϵ������������ϵ���������غϵģ�������Ҫ����z6��ƽ��һ�ξ���d6��

L(1) = Link([theta1,d1,a1,alpha1]);L(1).qlim=[-pi,pi];
L(2) = Link([theta2,d2,a2,alpha2]);L(2).qlim=[-pi/6,pi/2];
L(3) = Link([theta3,d3,a3,alpha3]);L(3).qlim=[-pi/2,pi/2];
L(4) = Link([theta4,d4,a4,alpha4]);L(4).qlim=[-pi/2,pi/2];
L(5) = Link([theta5,d5,a5,alpha5]);L(5).qlim=[-pi/2,pi/2];
L(6) = Link([theta6,d6,a6,alpha6]);L(6).qlim=[-pi,pi];

six_Robot=SerialLink(L,'name','six_Robot');
six_Robot.teach; 