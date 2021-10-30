%关节角（theta） 连杆偏距（a） 连杆长度（d） 连杆转角（alpha）
%Link()括号中只写一致的变量，未知的变量不写
L2 = 0.1;
L(1) = Link('a',    0,  'd',0,    'alpha',0,      'qlim',[-pi,pi],  'modified');
L(2) = Link('theta',0,  'a',0,    'alpha',pi/2',  'qlim',[0,10],    'modified');
L(3) = Link('a',    0,  'd',L2,   'alpha',0',     'qlim',[-pi,pi],  'modified');

RPR_Robot = SerialLink(L,'name','RPR');
RPR_Robot.plotopt = {'workspace',[-10,10,-10,10,-10,10]};
RPR_Robot.teach;
