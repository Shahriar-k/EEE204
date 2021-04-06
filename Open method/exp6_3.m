clc

f = @(x) -exp(-x) - 1;

syms x

df = matlabFunction(diff(f,x));


x = 0;
for k= 1:5
    x1 = x - (f(x)/fd(x));
    x = x1;
    
end
x;
