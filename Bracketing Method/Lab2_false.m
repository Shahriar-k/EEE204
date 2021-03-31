clc

x = linspace(0.00001,5,100);
fx = 2*x+0.026*log(x/10^-12)-5;
figure(1)
plot(x,fx)
grid on


xl = 2;
xu = 3;


for k=1:10
    
fxl = 2*xl+0.026*log(xl/10^-12)-5;
fxu = 2*xl+0.026*log(xu/10^-12)-5;
xr = xu-[(fxu*(xl-xu))/(fxl-fxu)];
fxr = 2*xl+0.026*log(xr/10^-12)-5;


if fxr*fxu < 0
    xl = xr;
elseif fxr*fxl < 0
    xu = xr;
end

xr_new = xu-[(fxu*(xl-xu))/(fxl-fxu)];


error = abs((xr_new - xr)/xr)*100;
end

fprintf('After 10 times itaration Xr = %d\n',xr_new);
fprintf('After 10 times itaration Error = %d\n',error);

