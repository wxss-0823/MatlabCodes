function yout=SimpleConfor(x0,h,q,c,N)
b=8/3;
a=10;
yout=zeros(3,N);
for i=1:N
    c10=x0(1);
    c20=x0(2);
    c30=x0(3);

    c11=a*(c20-c10);
    c21=(24-4*c)*c10+c*c20-c10*c30;
    c31=-b*c30+c10*c20;
    
    c12=a*(c21-c11);
    c22=(24-4*c)*c11+c*c21-c11*c30-c10*c31;
    c32=-b*c31+c11*c20+c10*c21;

    c13=a*(c22-c12);
    c23=(24-4*c)*c12+c*c22-c12*c30-c11*c31*2-c10*c32;
    c33=-b*c32+c12*c20+c11*c21*2+c10*c22;

    c14=a*(c23-c13);
    c24=(24-4*c)*c13+c*c23-c13*c30-(c12*c31+c11*c32)*3-c10*c33;
    c34=-b*c33+c13*c20+(c12*c21+c11*c22)*3+c10*c23;

    c15=a*(c24-c14);
    c25=(24-4*c)*c14+c*c24-c14*c30-(c13*c31+c11*c33)*4-c12*c32*6-c10*c34;
    c35=-b*c34+c14*c20+(c13*c21+c11*c23)*4+c12*c22*6+c10*c24;

    c16=a*(c25-c15);
    c26=(24-4*c)*c15+c*c25-c15*c30-(c14*c31+c11*c34)*5-(c13*c32+c12*c33)*10-c10*c35;
    c36=-b*c35+c15*c20+(c14*c21+c11*c24)*5+(c13*c22+c12*c23)*10+c10*c25;

    x0(1)=c10+c11*(h^q/q)+c12*h^(2*q)/(gamma(3)*q^(2))+c13*h^(3*q)/(gamma(4)*q^(3))+c14*h^(4*q)/(gamma(5)*q^(4))+c15*h^(5*q)/(gamma(6)*q^(5))+c16*h^(6*q)/(gamma(7)*q^(6));
    x0(2)=c20+c21*(h^q/q)+c22*h^(2*q)/(gamma(3)*q^(2))+c23*h^(3*q)/(gamma(4)*q^(3))+c24*h^(4*q)/(gamma(5)*q^(4))+c25*h^(5*q)/(gamma(6)*q^(5))+c26*h^(6*q)/(gamma(7)*q^(6));
    x0(3)=c30+c31*(h^q/q)+c32*h^(2*q)/(gamma(3)*q^(2))+c33*h^(3*q)/(gamma(4)*q^(3))+c34*h^(4*q)/(gamma(5)*q^(4))+c35*h^(5*q)/(gamma(6)*q^(5))+c36*h^(6*q)/(gamma(7)*q^(6));
    yout(:,i)=x0;
end





