%����FFTʵ�������е����Ծ���
n=0:20;
x=cos(0.1*pi*n);
h=(0.8).^n;
%
L=length(x)+length(h)-1;
X=fft(x,L);
H=fft(h,L);
y=ifft(X.*H);
subplot(3,1,1);stem(n,x);ylabel('����x(n)');xlabel('n');
subplot(3,1,2);stem(n,h);ylabel('����h(n)');xlabel('n');
n=0:L-1;
subplot(3,1,3);stem(n,y);ylabel('����y(n)');xlabel('n');
ylabel('�������y(n)');xlabel('n');