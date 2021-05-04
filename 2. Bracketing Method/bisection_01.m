%chapter- 5, Bracketing Methods
%Example 5.1
%Book: Numerical Method by Steven Chapra
 

ep_s = 1e-3;
error = 1;
xl = 12;
xu = 16;

while error > ep_s
    xr = (xl + xu)/2;
    
    fxl = 9.81*64.1/xl*(1-exp(-xl/68.1*10))-40;
    fxu = 9.81*64.1/xu*(1-exp(-xu/68.1*10))-40;
    fxr = 9.81*64.1/xr*(1-exp(-xr/68.1*10))-40;
    
   if fxr*fxu < 0
       xl = xr;
    elseif fxr*fxl < 0
        xu = xr;
   end
   
%    xr_new = xr;
%    error = abs((xr_new - xr_old)/xr_new)*100;
%    
%    xr_old = xr_new;
%     
end   