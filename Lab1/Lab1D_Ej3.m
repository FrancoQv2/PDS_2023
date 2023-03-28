figure(1); clf;
%
na=0:60;
xa=sin(.05*pi*na);
subplot(2,2,1); stem(na,xa); grid on; title('Señal ejercicio 3.a')
xlabel('n'); ylabel('x(n)'); axis([0,60,-1.5,1.5])
%
nb=0:60;
xb=sin(.1*pi*na);
subplot(2,2,2); stem(nb,xb); grid on; title('Señal ejercicio 3.b')
xlabel('n'); ylabel('x(n)'); axis([0,60,-1.5,1.5])
%
nc=0:60;
xc=exp(-.04*nc).*sin(.1*pi*nc);
subplot(2,2,3); stem(nc,xc); grid on; title('Señal ejercicio 3.c')
xlabel('n'); ylabel('x(n)'); axis([0,60,-1,1])
%
nd=0:60;
xd=sin(.1*pi*nd)+0.1*randn(size(nd));
subplot(2,2,4); stem(nd,xd); grid on; title('Señal ejercicio 3.d')
xlabel('n'); ylabel('x(n)'); axis([0,60,-1.5,1.5])