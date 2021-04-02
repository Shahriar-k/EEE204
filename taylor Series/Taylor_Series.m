clc 

x = linspace(-0,2*pi,1000);
f = sin(x);

a = pi/3;
%%terms start here%%
f0 = sin(a);
f1 = cos(a);
f2 = -sin(a);
f3 = -cos(a);
f4 = sin(a);
f5 = cos(a);

%%Taylor Series%%

T1 = f0;
T2 = f0 + f1*(x-a);
T3 = f0 + f1*(x-a) + f2*(x-a).^2 /2;
T4 = f0 + f1 + f2*(x-a) + f3*(x-a).^3 /6;
T5 = f0 + f1 + f2*(x-a) + f3*(x-a).^3 /6 + f4*(x-a).^4 /24;
T6 = f0 + f1 + f2*(x-a) + f3*(x-a).^3 /6 + f4*(x-a).^4 /24 + f5*(x-a).^5/720;


figure(1)
title('Sine Graph V/s. Final Taylor Series');
hold on
plot(x,f,'b')
plot(x,T6,'r')
legend('sin(x)','TaylorExp');
ylim([-4,4])
hold off
grid on

figure(2)
title('Taylor Series Approximation of sin(x)')
hold on
plot(x,f,'b','DisplayName','sin(x)')
plot(x,T2,'c','DisplayName','T2')
plot(x,T3,'y','DisplayName','T3')
plot(x,T4,'m','DisplayName','T4')
plot(x,T5,'k','DisplayName','T5')
plot(x,T6,'r','DisplayName','T6')
legend
ylim([-3,3]) 
grid on
hold off







