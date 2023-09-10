clear all;
close all;
amplitude=load('fuzhi.txt');
qianfuqi=load('qianfuqi.txt');
x1=mean(amplitude);
y1=mean(qianfuqi);
x=1:8;
% amplitude=char(amplitude');


% [p,tbl,stats] = anova1(amplitude)
error0=std(amplitude,0,1)/sqrt(4);
error1=std(qianfuqi,0,1)/sqrt(4);
% plot(x,x1)
errorbar(x,x1,error0,'-*')

[H1,P1,CI]=ttest2(amplitude(:,1),amplitude(:,7));
[H2,P2,CI]=ttest2(amplitude(:,2),amplitude(:,7));
[H3,P3,CI]=ttest2(amplitude(:,3),amplitude(:,7));
[H4,P4,CI]=ttest2(amplitude(:,4),amplitude(:,7));
[H5,P5,CI]=ttest2(amplitude(:,5),amplitude(:,7));
[H6,P6,CI]=ttest2(amplitude(:,6),amplitude(:,7));
[H7,P7,CI]=ttest2(amplitude(:,8),amplitude(:,7));

[H8,P8,CI]=ttest2(amplitude(:,1),amplitude(:,8));
[H9,P9,CI]=ttest2(amplitude(:,2),amplitude(:,8));
[H10,P10,CI]=ttest2(amplitude(:,3),amplitude(:,8));
[H11,P11,CI]=ttest2(amplitude(:,4),amplitude(:,8));
[H12,P12,CI]=ttest2(amplitude(:,5),amplitude(:,8));
[H13,P13,CI]=ttest2(amplitude(:,6),amplitude(:,8));

[H14,P14,CI]=ttest2(amplitude(:,2),amplitude(:,1));
[H15,P15,CI]=ttest2(amplitude(:,3),amplitude(:,1));
[H16,P16,CI]=ttest2(amplitude(:,4),amplitude(:,1));
[H17,P17,CI]=ttest2(amplitude(:,5),amplitude(:,1));
[H18,P18,CI]=ttest2(amplitude(:,6),amplitude(:,1));

[H19,P19,CI]=ttest2(amplitude(:,3),amplitude(:,2));
[H20,P20,CI]=ttest2(amplitude(:,4),amplitude(:,2));
[H21,P21,CI]=ttest2(amplitude(:,5),amplitude(:,2));
[H22,P22,CI]=ttest2(amplitude(:,6),amplitude(:,2));


[H23,P23,CI]=ttest2(amplitude(:,4),amplitude(:,3));
[H24,P24,CI]=ttest2(amplitude(:,5),amplitude(:,3));
[H25,P25,CI]=ttest2(amplitude(:,6),amplitude(:,3));

[H26,P26,CI]=ttest2(amplitude(:,5),amplitude(:,4));
[H27,P27,CI]=ttest2(amplitude(:,6),amplitude(:,4));

[H28,P28,CI]=ttest2(amplitude(:,6),amplitude(:,5));

% a/(1+exp(-(x-x0)/b))  Ë«Ö¸Êıº¯Êıa*exp(-b*x)+c*exp(-d*x)