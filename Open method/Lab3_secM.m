clc 

x= linspace(0,0.1,100);

f =@(x) x.*(1-exp(-10.*x)) -0.05;

figure(1)
plot(x,fx)
grid on
xlabel('x');
ylabel('f(x)');

x0 = 0.1;
xm1 = 0.08;

for k=1:2
    x1 = x0-[(f(x0)*(xm1-x0))/(f(xm1)-f(x0))];
    x2 = x1-[(f(x1)*(x0-x1))/(f(x0)-f(x1))];
end

disp(x1);
disp(x2);
