xl = 2;
xu = 3;

for k=1:15
xr = (xl+xu)/2;
fxl = 2*xl+0.026*log(xl/10^-12)-5;
fxu = 2*xl+0.026*log(xu/10^-12)-5;
fxr = 2*xl+0.026*log(xr/10^-12)-5;

if fxr*fxu < 0
    xl = xr;
else
    xu = xr;
end

xr_new = (xl+xu)/2;

error = abs((xr_new - xr)/xr)*100;
end