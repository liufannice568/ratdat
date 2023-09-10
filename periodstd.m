clear all
close all
clc

x1=[-0.0542,-0.0301,-0.0084,-0.0168,-0.0023];
x2=[-0.049,-0.0203,-0.0106,-0.0195,-0.0114];
x3=[-0.0941,-0.023,-0.0147,-0.029,-0.0086];
x4=[-0.0375,-0.0174,-0.0096,-0.013,-0.0075];
x5=[-0.036,-0.0089,-0.0128,-0.0134,-0.0047];
x6=[-0.0423,-0.0376,-0.0158,-0.0414,-0.0148];
x7=[-0.0783,-0.0266,-0.024,-0.0205,-0.0175];
x8=[-0.1442,-0.053,-0.049,-0.0456,-0.018];
y=[1,2,3,4,5];
% [xx1, yy] = createFit( y, x1 );
% [xx2, yy] = createFit( y, x2 );
% [xx3, yy] = createFit( y, x3 );
% [xx4, yy] = createFit( y, x4 );
% [xx5, yy] = createFit( y, x5 );
% [xx6, yy] = createFit( y, x6 );
% [xx7, yy] = createFit( y, x7 );
% [xx8, yy] = createFit( y, x8 );
% 
% plot(xx1)
% hold on
% plot(xx2)
% hold on
% plot(xx3)
% hold on
% plot(xx4)
% hold on
% plot(xx5)
% hold on
% plot(xx6)
% hold on
% plot(xx7)
% hold on
% plot(xx8)
% hold on
plot(y,x1,'-*');
hold on
plot(y,x2,'-*');
hold on
plot(y,x3,'-*');
hold on
plot(y,x4,'-*');
hold on
plot(y,x5,'-*');
hold on
plot(y,x6,'-*');
hold on
plot(y,x7,'-*');
hold on
plot(y,x8,'-*');
legend('1','2','3','4','5','6','7','8')
% a + b * log(x)