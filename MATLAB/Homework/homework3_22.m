%计算DTFT和DFT
%输入序列
x=[1,1,1,1];n=0:3;
%计算DTFT和画图
k=-200:200;w=(pi/100)*k;
X=x*(exp(-j*pi/100)).^(n'*k);
magX=abs(X);angX=angle(X)*180/pi;
figure(1)
subplot(2,1,1);plot(w/pi,magX);
axis([-1 1 0 4]);%设置轴限制和横纵比
grid;%显示网格
title('DTFT的幅度');xlabel('以\pi为单位的频率');ylabel('幅度');
subplot(2,1,2);plot(w/pi,angX);grid;
axis([-1,1,-200,200]);title('DTFT的相位');
xlabel('以\pi为单位的频率');ylabel('相位');
%计算DFT和画图
N=4;
X=dft(x,N);
magX=abs(X) 
phaX=angle(X)*180/pi
k=0:3;
figure(2)
subplot(2,1,1);stem(k,magX);
title('DFT的幅度');xlabel('k');
subplot(2,1,2);stem(k,phaX);
title('DFT的相位');xlabel('k');