clc



f =@(x) x.*(1-exp(-10.*x)) -0.05;

syms x

df = matlabFunction(diff(f,x));

n = 7;
y(1) = 0.1;

for i = 1:n
    
    y(i+1) = y(i)-f(y(i))/df(y(i));
    
    
    error1(i+1) = abs(y(i+1)-y(i))*100;
    
     
end 
error1;




