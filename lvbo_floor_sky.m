function [xlb]=lvbo_floor_sky(x,fs,f_floor,f_sky)
a = x;
N = length(a);
T = N*1/fs;
t = linspace(0,T,N);
x = a;
dt = t(2)- t(1);
f = 1/dt;
xfft=fft(x);
F = xfft(1:N);
f = f*(0:N-1)/N;
p = N/fs;
if mod(length(a)/2,2)==0
    F(floor(p*f_sky):length(a))=0;
else
    F(floor(p*f_sky):length(a)+1)=0;
end
F(1:floor(p*f_floor))=0;
xifft=ifft(F);%ÂË²¨ºó½á¹û
xlb=xifft;
xlb = real(xlb);
%xlb = abs(xlb);
% y = y/max(y);
end

