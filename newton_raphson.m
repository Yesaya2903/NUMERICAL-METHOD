clear all
clc

p = 1;
N=100;
TOL = 10^-5;
for i = 1:N
   fp =  -2*p^5 - 1.6*p^3 + 12*p + 1
   dfp = -10*p^4 - 4.8*p^2 + 12
   if abs(fp)<TOL
       break 
   end
   p = p - (fp/dfp)
end

disp('INI METODE NEWTON RAPHSON')
disp(p)
