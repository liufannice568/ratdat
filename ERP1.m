clear all;
close all;
fs =10000;                                  %采样率
tlig=1;                                     %开灯时间
td1=0.2;                                      %开灯前几秒
td2=0.2;                                      %开灯后几秒
T=2;

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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s11=[s1,s2,s3,s4]
ss11=[ss1,ss2,ss3,ss4]
sig11=[sig1,sig2,sig3,sig4];
sig11=mean(sig11,2);

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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s12=[s1,s2,s3,s4]
ss12=[ss1,ss2,ss3,ss4]
sig12=[sig1,sig2,sig3,sig4];
sig12=mean(sig12,2);

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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s13=[s1,s2,s3,s4]
ss13=[ss1,ss2,ss3,ss4]
sig13=[sig1,sig2,sig3,sig4];
sig13=mean(sig13,2);


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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s14=[s1,s2,s3,s4]
ss14=[ss1,ss2,ss3,ss4]
sig14=[sig1,sig2,sig3,sig4];
sig14=mean(sig14,2);

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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s15=[s1,s2,s3,s4]
ss15=[ss1,ss2,ss3,ss4]
sig15=[sig1,sig2,sig3,sig4];
sig15=mean(sig15,2);


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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s16=[s1,s2,s3,s4]
ss16=[ss1,ss2,ss3,ss4]
sig16=[sig1,sig2,sig3,sig4];
sig16=mean(sig16,2);


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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s17=[s1,s2,s3,s4]
ss17=[ss1,ss2,ss3,ss4]
sig17=[sig1,sig2,sig3,sig4];
sig17=mean(sig17,2);


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
for i=1:20
    dark11=sigdark11(:,i);
    dark21=sigdark21(:,i);
    light1=siglight1(:,i);
    sig1=[dark11',light1',dark21'];
    sig1 = movmean(sig1,1000) ;
    signal1(:,i)=sig1;
    t=0:1/fs:(length(sig1)-1)/fs;
    figure(2)
    plot(t,sig1)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark12=sigdark12(:,i);
    dark22=sigdark22(:,i);
    light2=siglight2(:,i);
    sig2=[dark12',light2',dark22'];
    sig2 = movmean(sig2,1000) ;
    signal2(:,i)=sig2;
    t=0:1/fs:(length(sig2)-1)/fs;
    figure(3)
    plot(t,sig2)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark13=sigdark13(:,i);
    dark23=sigdark23(:,i);
    light3=siglight3(:,i);
    sig3=[dark13',light3',dark23'];
    sig3 = movmean(sig3,1000) ;
    signal3(:,i)=sig3;
    t=0:1/fs:(length(sig3)-1)/fs;
    figure(4)
    plot(t,sig3)
%     xlim([0.8 2])
    hold on
end
for i=1:20
    dark14=sigdark14(:,i);
    dark24=sigdark24(:,i);
    light4=siglight4(:,i);
    sig4=[dark14',light4',dark24'];
    sig4 = movmean(sig4,1000) ;
    signal4(:,i)=sig4;
    t=0:1/fs:(length(sig4)-1)/fs;
    figure(5)
    plot(t,sig4)
%     xlim([0.8 2])
    hold on
end

sig1=mean(signal1,2);
sig2=mean(signal2,2);
sig3=mean(signal3,2);
sig4=mean(signal4,2);
s1=min(sig1);
ss1=find(sig1==s1)
s2=min(sig2);
ss2=find(sig2==s2)
s3=min(sig3);
ss3=find(sig3==s3)
s4=min(sig4);
ss4=find(sig4==s4)
s18=[s1,s2,s3,s4]
ss18=[ss1,ss2,ss3,ss4]
sig18=[sig1,sig2,sig3,sig4];
sig18=mean(sig18,2);

%% 10-1
% T=10;
% for i = 1:4
%     DATA=['load 9',num2str(i),'.mat;'];
%     eval(DATA);
%     data=chanvals;
%     try
%         loaddata1=['data',num2str(i),' = data(:,1).*123.4567*3;'];
%         eval(loaddata1);
%         loaddata1=['trig',num2str(i),' = data(:,2);'];
%         eval(loaddata1);
%         div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
%         eval(div);
%     catch 
%          loaddata1=['data',num2str(i),' = data(:,2).*123.4567*3;'];
%         eval(loaddata1);
%         loaddata1=['trig',num2str(i),' = data(:,1);'];
%         eval(loaddata1);
%         div=['[sigdark1',num2str(i),',siglight',num2str(i),',sigdark2',num2str(i),'] = divERP(trig',num2str(i),',data',num2str(i),',fs,T,td1,td2,tlig);'];
%             eval(div);
%     end
%       
% end
% for i=1:min(size(siglight1))
%     dark11=sigdark11(:,i);
%     dark21=sigdark21(:,i);
%     light1=siglight1(:,i);
%     sig1=[dark11',light1',dark21'];
%     sig1 = movmean(sig1,1000) ;
%     signal1(:,i)=sig1;
%     t=0:1/fs:(length(sig1)-1)/fs;
%     figure(2)
%     plot(t,sig1)
% %     xlim([0.8 2])
%     hold on
% end
% for i=1:min(size(siglight2))
%     dark12=sigdark12(:,i);
%     dark22=sigdark22(:,i);
%     light2=siglight2(:,i);
%     sig2=[dark12',light2',dark22'];
%     sig2 = movmean(sig2,1000) ;
%     signal2(:,i)=sig2;
%     t=0:1/fs:(length(sig2)-1)/fs;
%     figure(3)
%     plot(t,sig2)
% %     xlim([0.8 2])
%     hold on
% end
% for i=1:min(size(siglight3))
%     dark13=sigdark13(:,i);
%     dark23=sigdark23(:,i);
%     light3=siglight3(:,i);
%     sig3=[dark13',light3',dark23'];
%     sig3 = movmean(sig3,1000) ;
%     signal3(:,i)=sig3;
%     t=0:1/fs:(length(sig3)-1)/fs;
%     figure(4)
%     plot(t,sig3)
% %     xlim([0.8 2])
%     hold on
% end
% for i=1:min(size(siglight4))
%     dark14=sigdark14(:,i);
%     dark24=sigdark24(:,i);
%     light4=siglight4(:,i);
%     sig4=[dark14',light4',dark24'];
%     sig4 = movmean(sig4,1000) ;
%     signal4(:,i)=sig4;
%     t=0:1/fs:(length(sig4)-1)/fs;
%     figure(5)
%     plot(t,sig4)
% %     xlim([0.8 2])
%     hold on
% end

% sig1=mean(signal1,2);
% sig2=mean(signal2,2);
% sig3=mean(signal3,2);
% sig4=mean(signal4,2);
% s1=min(sig1);
% ss1=find(sig1==s1)
% s2=min(sig2);
% ss2=find(sig2==s2)
% s3=min(sig3);
% ss3=find(sig3==s3)
% s4=min(sig4);
% ss4=find(sig4==s4)
% s19=[s1,s2,s3,s4]
% ss19=[ss1,ss2,ss3,ss4]
% sig19=[sig1,sig2,sig3,sig4];
% sig19=mean(sig19,2);



figure(10)
t=0:1/fs:(length(sig17)-1)/fs;
plot(t,sig11)
hold on
plot(t,sig12)
hold on
plot(t,sig13)
hold on
plot(t,sig14)
hold on
plot(t,sig15)
hold on
plot(t,sig16)
hold on
plot(t,sig17)
hold on
plot(t,sig18)
legend('1','2','3','4','5','6','7','8')
ylim = get(gca,'Ylim');
hold on
plot([td1,td1],ylim,'r--');
hold on
plot([td1+tlig,td1+tlig],ylim,'r--');
xlim([0 1])
title('ERP')