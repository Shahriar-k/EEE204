ep_s = 1e-3;
error = 1;
xl = 2;
xu = 3;

while error > ep_s
   xr = (xl+xu)/2;
   
   fxl = 2*xl + 0.026*log(xl/10^-12) -5;
   fxu = 2*xu + 0.026*log(xu/10^-12) -5;
   fxr = 2*xl + 0.026*log(xr/10^-12) -5;
   
   if fxr*fxu < 0
       xl = xr;
   elseif fxr*fxl < 0
       xu = xr;
   end
   
   
end