figure(1); clf;
%
%no anda el A
na=-20:20;
xa= zeros(1,10);
for m= 0:10
    xaux=   (m+1).*(impseq(2*m,-20,20)-impseq(2*m+1,-20,20)) ;
    xa(m+1)=xaux;
end
subplot(3,2,1); stem(na,xa); grid on; title('Señal ejercicio 1.a')
xlabel('n'); ylabel('x(n)'); axis([-20,20,-1,25])

%
nb= -20:20;
xb1= nb.*nb; 
xb2= stepseq(-5,-20,20)-stepseq(6,-20,20);
xb3= 10*impseq(0,-20,20);
xb4= 20.*(0.5).^(nb);   
xb5= stepseq(4,-20,20)-stepseq(10,-20,20);
xb = xb1.*xb2+xb3+xb4.*xb5; 
subplot(2,2,1); stem(nb,xb); grid on; title('Señal ejercicio 1.b')
xlabel('n'); ylabel('x(n)'); axis([-20,20,0,27])  
%
nc= 0:20;
xc1=(0.9).^nc;  
xc2=cos(pi*0.2.*nc+pi/3);    
xc=xc1.*xc2;
subplot(2,2,2); stem(nc,xc); grid on; title('Señal ejercicio 1.c')
xlabel('n'); ylabel('x(n)'); axis([0,20,-1,1])    %ver valores de Y
%
nd=0:100;
xdaux=(nd.^(2));
xd1=10*cos(pi*0.0008*xdaux);
xd2=randi([-1,1],size(nd));         
xd=xd1+xd2;
subplot(2,2,3); stem(nd,xd); grid on; title('Señal ejercicio 1.d')
xlabel('n'); ylabel('x(n)'); axis([0,100,-.11,12]) 
%
ne= 0:19;    
xe1=[2,1,2,3];
xe=xe1'* ones(1,5);
xe=(xe(:))';
subplot(3,2,5); stem(ne,xe); grid on; title('Señal ejercicio 1.e')
xlabel('n'); ylabel('x(n)'); axis([0,20,0,4]) 
%
