figure(1); clf;
%
[xa,na]=stepseq(0,-2,22);
xa=na.*xa;
subplot(2,2,1); stem(na,xa); grid on; title('Señal ejercicio 2.a')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-1,25])
%
[xb,nb]=stepseq(0,-2,22);
xb=exp(-.2*nb).*xb;
subplot(2,2,2); stem(nb,xb); grid on; title('Señal ejercicio 2.b')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-.5,1.5])
%
nc=-2:22;
xc1=nc;
xc2=stepseq(0,-2,22)-stepseq(10,-2,22);
xc3=10*exp(-.3.*(nc-10));
xc4=stepseq(10,-2,22)-stepseq(20,-2,22);
xc=xc1.*xc2+xc3.*xc4;
subplot(2,2,3); stem(nc,xc); grid on; title('Señal ejercicio 2.c')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-2,12])
%
[xd,nd]=stepseq(0,-2,22);
xd=nd.*exp(-.25.*nd).*xd;
subplot(2,2,4); stem(nd,xd); grid on; title('Señal ejercicio 2.d')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-.5,2])