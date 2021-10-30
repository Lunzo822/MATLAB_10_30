%��2.23
%2�����ɶȵĻ�е��

%�������
syms a1 a2 theta1 theta2
syms nx ny nz ox oy oz ax ay az px py pz

%1������ϵ�����0������ϵ�ı任����
T01 = [cos(theta1)  -sin(theta1)    0   a1*cos(theta1);
       sin(theta1)  cos(theta1)     0   a1*sin(theta1);
       0            0               1   0;
       0            0               0   1];

%2������ϵ�����1������ϵ�ı任����   
T12 = [cos(theta2)  -sin(theta2)    0   a2*cos(theta2);
       sin(theta2)  cos(theta2)     0   a2*sin(theta2);
       0            0               1   0;
       0            0               0   1];

%������ѧ��ʽ�򻯹�ʽ
%cos(theta1+theta2)=cos(theta1)*cos(theta2)-sin(theta1)*sin(theta2);
%sin(theta1+theta2)=sin(theta1)*cos(theta2)+cos(theta1)*sin(theta2);
   
%2������ϵ�����0������ϵ���ܱ任����
T02=T01*T12;

%�򻯾���
simplify(T02)

%%%%%%%%%%
%���˶�ѧ%
%%%%%%%%%%
%����ģ��
Two_Link=SerialLink(T02);

%���ýǶ�
%Two_Link.fkine(pi/2);

%��ͼ
%Two_Link.plot(pi/2);

%%%%%%%%%%
%���˶�ѧ%
%%%%%%%%%%
%ĩ��λ����̬
T=[nx ox ax pz;
   ny oy ay oy;
   nz oz az pz;
   0  0  0  1];

%��������
T1=inv(T01)*T;
T2=T12;

%�򻯾���
simplify(T1)
simplify(T2)

