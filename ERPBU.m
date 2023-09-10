clear all;
close all;
fs =10000;                                  %采样率
tlig=1;                                     %开灯时间
td1=0.2;                                      %开灯前几秒
td2=0.2;                                      %开灯后几秒
T=2;
 warning off 
%% 2-1
for i = 1:4
    DATA=['load 1',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;']
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:10
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=10:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=20:30
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=30:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=40:50
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end
for i=50:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig16=[dark11',light1',dark21'];
    sig16 = movmean(sig16,1000) ;
    signal16(:,i)=sig16;
end
for i=60:70
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig17=[dark11',light1',dark21'];
    sig17 = movmean(sig17,1000) ;
    signal17(:,i)=sig17;
end
for i=70:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig18=[dark11',light1',dark21'];
    sig18 = movmean(sig18,1000) ;
    signal18(:,i)=sig18;
end
for i=80:90
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig19=[dark11',light1',dark21'];
    sig19 = movmean(sig19,1000) ;
    signal19(:,i)=sig19;
end
for i=90:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig110=[dark11',light1',dark21'];
    sig110 = movmean(sig110,1000) ;
    signal110(:,i)=sig110;
end
% 2
for i=1:10
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=10:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig22=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=20:30
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=30:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig24;
end
for i=40:50
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
for i=50:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig26=[dark12',light2',dark22'];
    sig26 = movmean(sig26,1000) ;
    signal26(:,i)=sig26;
end
for i=60:70
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig27=[dark12',light2',dark22'];
    sig27 = movmean(sig27,1000) ;
    signal27(:,i)=sig27;
end
for i=70:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig28=[dark12',light2',dark22'];
    sig28 = movmean(sig28,1000) ;
    signal28(:,i)=sig28;
end
for i=80:90
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig29=[dark12',light2',dark22'];
    sig29 = movmean(sig29,1000) ;
    signal29(:,i)=sig29;
end
for i=90:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig210=[dark12',light2',dark22'];
    sig210 = movmean(sig210,1000) ;
    signal210(:,i)=sig210;
end
% 3
for i=1:10
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=10:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=20:30
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=30:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=40:50
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
for i=50:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig36=[dark13',light3',dark23'];
    sig36 = movmean(sig31,1000) ;
    signal36(:,i)=sig36;
end
for i=60:70
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig37=[dark13',light3',dark23'];
    sig37 = movmean(sig37,1000) ;
    signal37(:,i)=sig37;
end
for i=70:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig38=[dark13',light3',dark23'];
    sig38 = movmean(sig38,1000) ;
    signal38(:,i)=sig38;
end
for i=80:90
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig39=[dark13',light3',dark23'];
    sig39 = movmean(sig39,1000) ;
    signal39(:,i)=sig39;
end
for i=90:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig310=[dark13',light3',dark23'];
    sig310 = movmean(sig310,1000) ;
    signal310(:,i)=sig310;
end
% 4
for i=1:10
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=10:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=20:30
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=30:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=40:50
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end
for i=50:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig46=[dark14',light4',dark24'];
    sig46  = movmean(sig46,1000) ;
    signal46(:,i)=sig46;
end
for i=60:70
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig47=[dark14',light4',dark24'];
    sig47 = movmean(sig47,1000) ;
    signal47(:,i)=sig47;
end
for i=70:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig48=[dark14',light4',dark24'];
    sig48 = movmean(sig48,1000) ;
    signal48(:,i)=sig48;
end
for i=80:90
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig49=[dark14',light4',dark24'];
    sig49 = movmean(sig49,1000) ;
    signal49(:,i)=sig49;
end
for i=90:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig410=[dark14',light4',dark24'];
    sig410 = movmean(sig410,1000) ;
    signal410(:,i)=sig410;
end
sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig111=[sig11,sig21,sig31,sig41];
sig111=mean(sig111,2);
s111=min(sig111);
ss111=find(sig111==s111);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig112=[sig12,sig22,sig32,sig42];
sig112=mean(sig112,2);
s112=min(sig112);
ss112=find(sig112==s112);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig113=[sig13,sig23,sig33,sig43];
sig113=mean(sig113,2);
s113=min(sig113);
ss113=find(sig113==s113);


sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig114=[sig14,sig24,sig34,sig44];
sig114=mean(sig114,2);
s114=min(sig114);
ss114=find(sig114==s114);


sig15=mean(signal15,2);
sig25=mean(signal25,2);
sig35=mean(signal35,2);
sig45=mean(signal45,2);
sig115=[sig15,sig25,sig35,sig45];
sig115=mean(sig115,2);
s115=min(sig115);
ss115=find(sig115==s115);

sig16=mean(signal16,2);
sig26=mean(signal26,2);
sig36=mean(signal36,2);
sig46=mean(signal46,2);
sig116=[sig16,sig26,sig36,sig46];
sig116=mean(sig116,2);
s116=min(sig116);
ss116=find(sig116==s116);

sig17=mean(signal17,2);
sig27=mean(signal27,2);
sig37=mean(signal37,2);
sig47=mean(signal47,2);
sig117=[sig17,sig27,sig37,sig47];
sig117=mean(sig117,2);
s117=min(sig117);
ss117=find(sig117==s117);

sig18=mean(signal18,2);
sig28=mean(signal28,2);
sig38=mean(signal38,2);
sig48=mean(signal48,2);
sig118=[sig18,sig28,sig38,sig48];
sig118=mean(sig118,2);
s118=min(sig118);
ss118=find(sig118==s118);

sig19=mean(signal19,2);
sig29=mean(signal29,2);
sig39=mean(signal39,2);
sig49=mean(signal49,2);
sig119=[sig19,sig29,sig39,sig49];
sig119=mean(sig119,2);
s119=min(sig119);
ss119=find(sig119==s119);

sig110=mean(signal110,2);
sig210=mean(signal210,2);
sig310=mean(signal310,2);
sig410=mean(signal410,2);
sig1110=[sig110,sig210,sig310,sig410];
sig1110=mean(sig1110,2);
s1110=min(sig1110);
ss1110=find(sig1110==s1110);

T=1
s11=[s111,s112,s113,s114,s115,s116,s117,s118,s119,s1110]
ss11=[ss111,ss112,ss113,ss114,ss115,ss116,ss117,ss118,ss119,ss1110]
t=0:1/fs:(length(sig111)-1)/fs;
figure(1)
plot(t,sig111)
hold on
plot(t,sig112)
hold on
plot(t,sig113)
hold on
plot(t,sig114)
hold on
plot(t,sig115)
hold on
plot(t,sig116)
hold on
plot(t,sig117)
hold on
plot(t,sig118)
hold on
plot(t,sig119)
hold on
plot(t,sig1110)

%% 3-1
T=3;
for i = 1:4
    DATA=['load 2',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig211=[sig11,sig21,sig31,sig41];
sig211=mean(sig211,2);
s211=min(sig211);
ss211=find(sig211==s211);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig212=[sig12,sig22,sig32,sig42];
sig212=mean(sig212,2);
s212=min(sig212);
ss212=find(sig212==s212);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig213=[sig13,sig23,sig33,sig43];
sig213=mean(sig213,2);
s213=min(sig213);
ss213=find(sig213==s213);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig214=[sig14,sig24,sig34,sig44];
sig214=mean(sig214,2);
s214=min(sig214);
ss214=find(sig214==s214);

T=2
s21=[s211,s212,s213,s214]
ss21=[ss211,ss212,ss213,ss214]

t=0:1/fs:(length(sig211)-1)/fs;
figure(2)
plot(t,sig211)
hold on
plot(t,sig212)
hold on
plot(t,sig213)
hold on
plot(t,sig214)

%% 4-1
T=4;
for i = 1:4
    DATA=['load 3',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig311=[sig11,sig21,sig31,sig41];
sig311=mean(sig311,2);
s311=min(sig311);
ss311=find(sig311==s211);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig312=[sig12,sig22,sig32,sig42];
sig312=mean(sig312,2);
s312=min(sig312);
ss312=find(sig312==s312);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig313=[sig13,sig23,sig33,sig43];
sig313=mean(sig313,2);
s313=min(sig313);
ss313=find(sig313==s313);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig314=[sig14,sig24,sig34,sig44];
sig314=mean(sig314,2);
s314=min(sig314);
ss314=find(sig314==s314);

T=3
s31=[s311,s312,s313,s314]
ss31=[ss311,ss312,ss313,ss314]

t=0:1/fs:(length(sig311)-1)/fs;
figure(3)
plot(t,sig311)
hold on
plot(t,sig312)
hold on
plot(t,sig313)
hold on
plot(t,sig314)


%% 5-1
T=5;
for i = 1:4
    DATA=['load 4',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig411=[sig11,sig21,sig31,sig41];
sig411=mean(sig411,2);
s411=min(sig411);
ss411=find(sig411==s411);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig412=[sig12,sig22,sig32,sig42];
sig412=mean(sig412,2);
s412=min(sig412);
ss412=find(sig412==s412);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig413=[sig13,sig23,sig33,sig43];
sig413=mean(sig413,2);
s413=min(sig413);
ss413=find(sig413==s413);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig414=[sig14,sig24,sig34,sig44];
sig414=mean(sig414,2);
s414=min(sig414);
ss414=find(sig414==s414);

T=4
s41=[s411,s412,s413,s414]
ss41=[ss411,ss412,ss413,ss414]

t=0:1/fs:(length(sig411)-1)/fs;
figure(4)
plot(t,sig411)
hold on
plot(t,sig412)
hold on
plot(t,sig413)
hold on
plot(t,sig414)

%% 6-1
T=6;
for i = 1:4
    DATA=['load 5',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig511=[sig11,sig21,sig31,sig41];
sig511=mean(sig511,2);
s511=min(sig511);
ss511=find(sig511==s511);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig512=[sig12,sig22,sig32,sig42];
sig512=mean(sig512,2);
s512=min(sig512);
ss512=find(sig512==s512);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig513=[sig13,sig23,sig33,sig43];
sig513=mean(sig513,2);
s513=min(sig513);
ss513=find(sig513==s513);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig514=[sig14,sig24,sig34,sig44];
sig514=mean(sig514,2);
s514=min(sig514);
ss514=find(sig514==s514);

T=5
s51=[s511,s512,s513,s514]
ss51=[ss511,ss512,ss513,ss514]

t=0:1/fs:(length(sig511)-1)/fs;
figure(5)
plot(t,sig511)
hold on
plot(t,sig512)
hold on
plot(t,sig513)
hold on
plot(t,sig514)


%% 7-1 
T=7;
for i = 1:4
    DATA=['load 6',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig611=[sig11,sig21,sig31,sig41];
sig611=mean(sig611,2);
s611=min(sig611);
ss611=find(sig611==s611);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig612=[sig12,sig22,sig32,sig42];
sig612=mean(sig612,2);
s612=min(sig612);
ss612=find(sig612==s612);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig613=[sig13,sig23,sig33,sig43];
sig613=mean(sig613,2);
s613=min(sig613);
ss613=find(sig613==s613);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig614=[sig14,sig24,sig34,sig44];
sig614=mean(sig614,2);
s614=min(sig614);
ss614=find(sig614==s614);

T=6
s61=[s611,s612,s613,s614]
ss61=[ss611,ss612,ss613,ss614]

t=0:1/fs:(length(sig611)-1)/fs;
figure(6)
plot(t,sig611)
hold on
plot(t,sig612)
hold on
plot(t,sig613)
hold on
plot(t,sig614)

%% 8-1
T=8;
for i = 1:4
    DATA=['load 7',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig711=[sig11,sig21,sig31,sig41];
sig711=mean(sig711,2);
s711=min(sig711);
ss711=find(sig711==s711);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig712=[sig12,sig22,sig32,sig42];
sig712=mean(sig712,2);
s712=min(sig712);
ss712=find(sig712==s712);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig713=[sig13,sig23,sig33,sig43];
sig713=mean(sig713,2);
s713=min(sig713);
ss713=find(sig713==s713);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig714=[sig14,sig24,sig34,sig44];
sig714=mean(sig714,2);
s714=min(sig714);
ss714=find(sig714==s714);

T=7
s71=[s711,s712,s713,s714]
ss71=[ss711,ss712,ss713,ss714]

t=0:1/fs:(length(sig711)-1)/fs;
figure(7)
plot(t,sig711)
hold on
plot(t,sig712)
hold on
plot(t,sig713)
hold on
plot(t,sig714)


%% 9-1
T=9;
for i = 1:4
    DATA=['load 8',num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
end
% 1
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig11=[dark11',light1',dark21'];
    sig11 = movmean(sig11,1000) ;
    signal11(:,i)=sig11;
end
for i=20:40
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig12=[dark11',light1',dark21'];
    sig12 = movmean(sig12,1000) ;
    signal12(:,i)=sig12;
end
for i=40:60
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig13=[dark11',light1',dark21'];
    sig13 = movmean(sig13,1000) ;
    signal13(:,i)=sig13;
end
for i=60:80
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig14=[dark11',light1',dark21'];
    sig11 = movmean(sig14,1000) ;
    signal14(:,i)=sig14;
end
for i=80:100
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig15=[dark11',light1',dark21'];
    sig15 = movmean(sig15,1000) ;
    signal15(:,i)=sig15;
end

% 2
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig21=[dark12',light2',dark22'];
    sig21 = movmean(sig21,1000) ;
    signal21(:,i)=sig21;
end
for i=20:40
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig22 = movmean(sig22,1000) ;
    signal22(:,i)=sig22;
end
for i=40:60
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig23=[dark12',light2',dark22'];
    sig23 = movmean(sig23,1000) ;
    signal23(:,i)=sig23;
end
for i=60:80
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig24=[dark12',light2',dark22'];
    sig24 = movmean(sig24,1000) ;
    signal24(:,i)=sig21;
end
for i=80:100
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig25=[dark12',light2',dark22'];
    sig25 = movmean(sig25,1000) ;
    signal25(:,i)=sig25;
end
% 3
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig31=[dark13',light3',dark23'];
    sig31 = movmean(sig31,1000) ;
    signal31(:,i)=sig31;
end
for i=20:40
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig32=[dark13',light3',dark23'];
    sig32 = movmean(sig32,1000) ;
    signal32(:,i)=sig32;
end
for i=40:60
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig33=[dark13',light3',dark23'];
    sig33 = movmean(sig33,1000) ;
    signal33(:,i)=sig33;
end
for i=60:80
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig34=[dark13',light3',dark23'];
    sig34 = movmean(sig34,1000) ;
    signal34(:,i)=sig34;
end
for i=80:100
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig35=[dark13',light3',dark23'];
    sig35 = movmean(sig35,1000) ;
    signal35(:,i)=sig35;
end
% 4
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig41=[dark14',light4',dark24'];
    sig41 = movmean(sig41,1000) ;
    signal41(:,i)=sig41;
end
for i=20:40
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig42=[dark14',light4',dark24'];
    sig42 = movmean(sig42,1000) ;
    signal42(:,i)=sig42;
end
for i=40:60
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig43=[dark14',light4',dark24'];
    sig43 = movmean(sig43,1000) ;
    signal43(:,i)=sig43;
end
for i=60:80
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig44=[dark14',light4',dark24'];
    sig44 = movmean(sig44,1000) ;
    signal44(:,i)=sig44;
end
for i=80:100
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig45=[dark14',light4',dark24'];
    sig45 = movmean(sig45,1000) ;
    signal45(:,i)=sig45;
end

sig11=mean(signal11,2);
sig21=mean(signal21,2);
sig31=mean(signal31,2);
sig41=mean(signal41,2);
sig811=[sig11,sig21,sig31,sig41];
sig811=mean(sig811,2);
s811=min(sig811);
ss811=find(sig811==s811);

sig12=mean(signal12,2);
sig22=mean(signal22,2);
sig32=mean(signal32,2);
sig42=mean(signal42,2);
sig812=[sig12,sig22,sig32,sig42];
sig812=mean(sig812,2);
s812=min(sig812);
ss812=find(sig812==s812);


sig13=mean(signal13,2);
sig23=mean(signal23,2);
sig33=mean(signal33,2);
sig43=mean(signal43,2);
sig813=[sig13,sig23,sig33,sig43];
sig813=mean(sig813,2);
s813=min(sig813);
ss813=find(sig813==s813);

sig14=mean(signal14,2);
sig24=mean(signal24,2);
sig34=mean(signal34,2);
sig44=mean(signal44,2);
sig814=[sig14,sig24,sig34,sig44];
sig814=mean(sig814,2);
s814=min(sig814);
ss814=find(sig814==s814);

T=8
s81=[s811,s812,s813,s814]
ss81=[ss811,ss812,ss813,ss814]

t=0:1/fs:(length(sig811)-1)/fs;
figure(8)
plot(t,sig811)
hold on

plot(t,sig812)
hold on
plot(t,sig813)
hold on
plot(t,sig814)

