%计算序列DTFT
%输入序列
n=-1:3;x=1:5;
%在横坐标轴上分点
k=0:500;w=(pi/500)*k;
%计算DTFT
X=x*(exp(-j*pi/500)).^(n'*k);
magX=abs(X);angX=angle(X);
subplot(2,1,1);plot(w/pi,magX);title('幅度响应');
ylabel('幅度');xlabel('以\pi为单位的频率');
subplot(2,1,2);plot(w/pi,angX);title('相位响应');
ylabel('相位');xlabel('以\pi为单位的频率');
