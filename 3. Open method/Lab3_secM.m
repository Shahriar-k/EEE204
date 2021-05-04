clc 

x=linspace(0,0.1,1000);

f =@(x) x.*(1-exp(-10.*x)) -0.05;

figure(1)

plot(x,f(x))
grid on
xlabel('x');
ylabel('f(x)');

x = 0.1;
xm1 = 0.08;



x1 = x-(f(x)*(xm1-x))/(f(xm1)-f(x));
x2 = x1-(f(x1)*(x-x1))/(f(x)-f(x1));

disp(x1);
disp(x2);
