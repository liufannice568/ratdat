function [sigdark1,siglight,sigdark2,cksig] = divERP(trig,signal,fs,T,td1,td2,tlig)
f1 =0.1;                                    %设置滤波频率的上下限
f2 = 40;
signal = lvbo_floor_sky(signal,fs,f1,f2);%滤波
loctrig = diff(trig);
locdown = find(loctrig<-2);                         %下降沿
loclift = find(loctrig>2);                          %上升沿
if loclift(1)>locdown(1)
    locdown = locdown(2:end);                       %第二个上升沿
end

for i=1:min(length(locdown),length(loclift))-5
       if locdown(i+1)-locdown(i)<5
        locdown=[locdown(1:i);locdown(i+2:end)];
      end

    if loclift(i+1)-loclift(i)<5
        loclift=[loclift(1:i);loclift(i+2:end)];
    end
    if locdown(i+1)-locdown(i)>fs*T*1.5
        locdown=insert(locdown,i+1,locdown(i)+fs*T);
        locdown=locdown';
    end
    if loclift(i+1)-loclift(i)>fs*T*1.5
        loclift=insert(loclift,i+1,loclift(i)+fs*T);
        loclift=loclift';
    end
    if loclift(1)>locdown(2)
       loclift=[loclift(1)-fs*T;loclift];
    end
    if mean(signal(loclift(i):loclift(i+1)))>0
        sig=signal(loclift(i):loclift(i+1))-mean(signal((locdown(i)-fs*0.2):locdown(i)));
    else
        sig=signal(loclift(i):loclift(i+1))-mean(signal((locdown(i)-fs*0.2):locdown(i)));
    end
    
    light=sig(end-tlig*fs:end);    %第一个下降沿到第二个上升沿（开灯）
    siglight(:,i)=light;
    dark=sig(1:end-tlig*fs);     %第二个上升沿到第二个下降沿（关灯）
    sigdark2(:,i)=dark(1:td2*fs);
    sigdark1(:,i)=dark(length(dark)-td1*fs+1:end);
    cksig(:,i)=dark(fs*td1:fs*(T-td1-td2-tlig));
end
    sigdark2=sigdark2(:,2:end);
    sigdark1=sigdark1(:,1:end-1);
    siglight=siglight(:,1:end-1);
end