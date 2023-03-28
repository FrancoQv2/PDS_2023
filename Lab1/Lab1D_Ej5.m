figure(1); clf;
%
n = -3:9; x = [0:6,5:-1:0];
%
[ya,na] = sigfold(x,n);
subplot(2,2,1); stem(na,ya); grid on; title('Señal ejercicio 5.a')
xlabel('n'); ylabel('y(n)'); axis([-10,4,-1,8])
%
[yb,nb] = sigfold(x,n); [yb,nb] = sigshift(yb,nb,2);
subplot(2,2,2);stem(nb,yb); grid on; title('Señal ejercicio 5.b')
xlabel('n'); ylabel('y(n)'); axis([-8,6,-1,8])
%
[xc1,nc1] = sigshift(x,n,5); [xc2,nc2] = sigshift(x,n,-4);
[yc,nc] = sigadd(2*xc1,nc1,-3*xc2,nc2);
subplot(2,2,3);stem(nc,yc); grid on; title('Señal ejercicio 5.c')
xlabel('n'); ylabel('y(n)'); axis([-8,15,-20,20])
%
[xd1,nd1] = sigfold(x,n); [xd1,nd1] = sigshift(xd1,nd1,3);
[xd2,nd2] = sigshift(x,n,2); [xd2,nd2] = sigmult(x,n,xd2,nd2);
[yd,nd] = sigadd(xd1,nd1,xd2,nd2);
subplot(2,2,4); stem(nd,yd); grid on; title('Señal ejercicio 5.d')
xlabel('n'); ylabel('y(n)'); axis([-7,12,-1,30])
%