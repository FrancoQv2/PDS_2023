figure(1); clf;
%
na=-10:9;
xa1=[5,4,3,2,1];
xa=xa1'* ones(1,4);
xa=(xa(:))';
subplot(2,2,1); stem(na,xa); grid on; title('Señal ejercicio 4.a')
xlabel('n'); ylabel('x(n)'); axis([-11,10,-1,6])
%
nb=-10:9;
xb1=[3,4,5,5,4,3,2,1,1,2];
xb=xb1'* ones(1,2);
xb=(xb(:))';
subplot(2,2,2);stem(nb,xb); grid on; title('Señal ejercicio 4.b')
xlabel('n'); ylabel('x(n)'); axis([-11,10,-1,6])
%
[yc,nc] = sigadd(xa,na,xb,nb);
subplot(2,2,3);stem(nc,yc); grid on; title('Señal ejercicio 4.c')
xlabel('n'); ylabel('x(n)'); axis([-11,10,-1,10])
%
[yd,nd] = sigmult(xa,na,xb,nb);
subplot(2,2,4); stem(nd,yd); grid on; title('Señal ejercicio 4.d')
xlabel('n'); ylabel('x(n)'); axis([-11,10,-1,20])