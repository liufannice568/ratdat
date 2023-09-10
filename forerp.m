clear all;
close all;
fs =10000;                                  %采样率
tlig=1;                                     %开灯时间
td1=0.2;                                      %开灯前几秒
td2=0.2;                                      %开灯后几秒

 warning off 
%% 2-1
for j= 1:8
    for i = 1:4
        T=1+j;
    DATA=['load ',num2str(j),num2str(i),'.mat;'];
    eval(DATA);
    data=chanvals;
    try
        loaddata=['data',num2str(j),num2str(i),' = data(:,1).*123.4567*3;']
        eval(loaddata);
        loaddata1=['trig',num2str(j),num2str(i),' = data(:,2);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(j),num2str(i),',siglight',num2str(j),num2str(i),',sigdark2',num2str(j),num2str(i),'] = divERP(trig',num2str(j),num2str(i),',data',num2str(j),num2str(i),',fs,T,td1,td2,tlig);'];
        eval(div);
    catch 
         loaddata1=['data',num2str(j),num2str(i),' = data(:,2).*123.4567*3;'];
        eval(loaddata1);
        loaddata1=['trig',num2str(j),num2str(i),' = data(:,1);'];
        eval(loaddata1);
        div=['[sigdark1',num2str(j),num2str(i),',siglight',num2str(j),num2str(i),',sigdark2',num2str(j),num2str(i),'] = divERP(trig',num2str(j),num2str(i),',data',num2str(j),num2str(i),',fs,T,td1,td2,tlig);'];
            eval(div);
    end
      
    end
end
for j=1:8
for i=1:4
for t=1:5
    s=t*20;
    for k=1:s
        
   eval(['dark1',num2str(j),num2str(i),num2str(t),'= sigdark1',num2str(j),num2str(i),'(:,k);']);
   eval([ 'dark2',num2str(j),num2str(i),num2str(t),'= sigdark2',num2str(j),num2str(i),'(:,k);']);
   eval([ 'light',num2str(j),num2str(i),num2str(t),'= siglight',num2str(j),num2str(i),'(:,k);']);
 
    eval(['sig',num2str(j),num2str(i),num2str(t),'=[dark1',num2str(j),num2str(i),num2str(t),''',light',num2str(j),num2str(i),num2str(t),''',dark2',num2str(j),num2str(i),num2str(t),'''];']);
    eval(['sig',num2str(j),num2str(i),num2str(t),' = movmean(sig',num2str(j),num2str(i),num2str(t),',1000) ;']);
    eval(['signal',num2str(j),num2str(i),num2str(t),'(:,k)=sig',num2str(j),num2str(i),num2str(t),';']);
     eval(['sig',num2str(j),num2str(i),num2str(t),'=mean(signal',num2str(j),num2str(i),num2str(t),',2);']);
    end
end
end
end
t=0:1/fs:(length(sig111)-1)/fs;
for j=1:8
for i=1:4
for t=1:5
eval(['s',num2str(j),num2str(i),num2str(t),'=min(sig',num2str(j),num2str(i),num2str(t),'(2000:6000));']);
eval(['ss',num2str(j),num2str(i),num2str(t),'=find(sig',num2str(j),num2str(i),num2str(t),'==s',num2str(j),num2str(i),num2str(t),');']);
end
for k=1:5
eval(['sss',num2str(j),num2str(k),'(:,i)=[s',num2str(j),num2str(i),num2str(k),']']);
end
end
end
