%��ϵͳ��Ƶ����Ӧ
%�����ַ��̵�ϵ��
b=[0.0181,0.0543,0.0543,0.0181];
a=[1.0000,-1.7600,1.1829,-0.2781];
m=0:length(b)-1;l=0:length(a)-1;
K=500;k=0:1:K;
w=pi*k/K;
%����Ƶ����Ӧ
num=b*exp(-j*m'*w);
den=a*exp(-j*l'*w);
H=num./den;
magH=abs(H);angH=angle(H);
%��ͼ
subplot(2,1,1);plot(w/pi,magH);title('������Ӧ');grid;
xlabel('��\piΪ��λ��Ƶ��');ylabel('����');
subplot(2,1,2);plot(w/pi,angH);title('��λ��Ӧ');grid;
xlabel('��\piΪ��λ��Ƶ��');ylabel('��λ');