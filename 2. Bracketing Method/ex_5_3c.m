clc 

xl = 0.5;
xu = 1;


for k = 1:5
  fxu = -25+82*xu-90*xu^2+44*xu^3-8*xu^4+0.7*xu^5;
  fxl = -25+82*xl-90*xl^2+44*xl^3-8*xl^4+0.7*xl^5;
  
  xr = xu-[(fxu*(xl-xu))/(fxl-fxu)];
  
  fxr = -25+82*xr-90*xr^2+44*xr^3-8*xr^4+0.7*xr^5;
  
  if fxr*fxu < 0
       xl = xr;
  else
       xu = xr;
  end
  
  xr_new = xu-[(fxu*(xl-xu))/(fxl-fxu)];
   
  error = abs((xr_new - xr)/xr)*100
  
  
end