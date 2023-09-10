clear all;
close all;
load('forperiod.mat');
x=1:5;
x1=[-0.0542,-0.0301,-0.0084,-0.0168,-0.0023];
x2=[-0.049,-0.0203,-0.0106,-0.0195,-0.0114];
x3=[-0.0941,-0.023,-0.0147,-0.029,-0.0086];
x4=[-0.0375,-0.0174,-0.0096,-0.013,-0.0075];
x5=[-0.036,-0.0089,-0.0128,-0.0134,-0.0047];
x6=[-0.0423,-0.0376,-0.0158,-0.0414,-0.0148];
x7=[-0.0783,-0.0266,-0.024,-0.0205,-0.0175];
x8=[-0.1442,-0.053,-0.049,-0.0456,-0.018];
y=[1,2,3,4,5];
ss1=[sss11;sss12;sss13;sss14;sss15];
ss2=[sss21;sss22;sss23;sss24;sss25];
ss3=[sss31;sss32;sss33;sss34;sss35];
ss4=[sss41;sss42;sss43;sss44;sss45];
ss5=[sss51;sss52;sss53;sss54;sss55];
ss6=[sss61;sss62;sss63;sss64;sss65];
ss7=[sss71;sss72;sss73;sss74;sss75];
ss8=[sss81;sss82;sss83;sss84;sss85];
error1=std(ss1,0,2)/sqrt(4);
error2=std(ss2,0,2)/sqrt(4);
error3=std(ss3,0,2)/sqrt(4);
error4=std(ss4,0,2)/sqrt(4);
error5=std(ss5,0,2)/sqrt(4);
error6=std(ss6,0,2)/sqrt(4);
error7=std(ss7,0,2)/sqrt(4);
error8=std(ss8,0,2)/sqrt(4);
s1=mean(ss1,2)';
s2=mean(ss2,2)';
s3=mean(ss3,2)';
s4=mean(ss4,2)';
s5=mean(ss5,2)';
s6=mean(ss6,2)';
s7=mean(ss7,2)';
s8=mean(ss8,2)';
% plot(x,s1)
% hold on
% plot(y,x1,'-*');
% hold on
% plot(y,x2,'-*');
% hold on
% plot(y,x3,'-*');
% hold on
% plot(y,x4,'-*');
% hold on
% plot(y,x5,'-*');
% hold on
% plot(y,x6,'-*');
% hold on
% plot(y,x7,'-*');
% hold on
% plot(y,x8,'-*');

errorbar(y,x1,error1,'-*')
hold on
errorbar(y,x2,error2,'-*')
hold on
errorbar(y,x3,error3,'-*')
hold on
errorbar(y,x4,error4,'-*')
hold on
errorbar(y,x5,error5,'-*')
hold on
errorbar(y,x6,error6,'-*')
hold on
errorbar(y,x7,error7,'-*')
hold on
errorbar(y,x8,error8,'-*')
legend('1','2','3','4','5','6','7','8')
