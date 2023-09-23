clear all
clc

a = input('Input first Initial Guess :'); 
b = input('Input second Initial Guess :');
fa = -2*a^5 - 1.6*a^3 + 12*a + 1     %Insert your equation here
fb = -2*b^5 - 1.6*b^3 + 12*b + 1     %Insert again here
tol=10^-5;
N=20;
i=1;

while i <= N
    p =(a+b)/2
    fp=-2*p^5 - 1.6*p^3 + 12*p + 1  %Another one here
    dfp = -10*p^4 - 4.8*p^2 + 12    %Use derritative
    if abs (fp) < tol
        break
    end
    i=i+1;
    if (fp*fa)>0
     a=p;
    else 
     b=p;
end
end

disp('INI METODE BISECTION')