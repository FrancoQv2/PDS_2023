figure(1); clf;
%
[xa,na]=impseq(2,-5,5);
subplot(2,2,1); stem(na,xa); grid on; title('Señal ejercicio 1.a')
xlabel('n'); ylabel('x(n)'); axis([-5,5,-1,2]);
%
[xb1,nb]=impseq(-2,-5,5);
[xb2,nb]=impseq(4,-5,5);
xb=2*xb1-xb2;
subplot(2,2,2); stem(nb,xb); grid on; title('Señal ejercicio 1.b')
xlabel('n'); ylabel('x(n)'); axis([-5,5,-2,3])
%
[xc,nc]=stepseq(2,-2,22);
subplot(2,2,3); stem(nc,xc); grid on; title('Señal ejercicio 1.c')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-1,2])
%
nd=-2:22;
xd=stepseq(0,-2,22)-stepseq(10,-2,22);
%
subplot(2,2,4); stem(nd,xd); grid on; title('Señal ejercicio 1.d')
xlabel('n'); ylabel('x(n)'); axis([-2,22,-1,2])