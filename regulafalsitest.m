clear all
clc

a = 1;
b = 2;
fa=-2*a^5 - 1.6*a^3 + 12*a + 1
fb=-2*b^5 - 1.6*b^3 + 12*b + 1
i=1;
N=100;
TOL = 10^-5;
while i<=N
   p = a-(fa*(b-a))/(fb-fa)
   fp=-2*p^5 - 1.6*p^3 + 12*p + 1
   if abs(fp)<TOL
   break 
   end
   i=i+1;
   if (fp*fa)>0
       a=p;
   else 
       b=p;
   end
end

disp('INI METODE REGULA FALSI')