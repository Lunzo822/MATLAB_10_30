%�ؽڽǣ�theta�� ����ƫ�ࣨa�� ���˳��ȣ�d�� ����ת�ǣ�alpha��
%Link()������ֻдһ�µı�����δ֪�ı�����д
L2 = 0.1;
L(1) = Link('a',    0,  'd',0,    'alpha',0,      'qlim',[-pi,pi],  'modified');
L(2) = Link('theta',0,  'a',0,    'alpha',pi/2',  'qlim',[0,10],    'modified');
L(3) = Link('a',    0,  'd',L2,   'alpha',0',     'qlim',[-pi,pi],  'modified');

RPR_Robot = SerialLink(L,'name','RPR');
RPR_Robot.plotopt = {'workspace',[-10,10,-10,10,-10,10]};
RPR_Robot.teach;
