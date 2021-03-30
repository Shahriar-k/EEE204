x = linspace(0.00001,2,100);
fx = 2*x+0.026*log(x/10^-12)-5;
figure(1)
plot(x,fx)
grid on