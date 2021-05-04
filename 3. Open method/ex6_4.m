clc 

x = linspace(0,6,100);

f = @(x) -1+5.5*x - 4*x.^2 + 0.5*x.^3;

syms x

fd = matlabFunction(diff(f,x));

