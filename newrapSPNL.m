%Creator : Yesaya Ananda D.
%NRP : 5002211156
%Assisted by : Nathaniel Takeshi 
%NRP : 5002211175
%SPNL Newton Raphson using input
clear all;
clc;

syms x y
tol = 10^-3;
i = 1;
N = 10;
xy = input('Masukkan nilai x1 : ');
yx = input('Masukkan nilai x2 : ');
disp('Change the variable x2 to y for the equation');
fxy = input('Masukkan persamaan pertama : ');
gxy = input('Masukkan persamaan kedua : ');

while i<N

dfx = diff(fxy,x);
dfy = diff(fxy,y);
dgx = diff(gxy,x);
dgy = diff(gxy,y);

fx1 = double(subs(fxy, {x,y}, {xy,yx}))
fx2 = double(subs(gxy, {x,y}, {xy,yx}))
df1dx1 = double(subs(dfx, xy));
df1dy1 = double(subs(dfy, yx));
df2dx1 = double(subs(dgx, {x,y}, {xy,yx}));
df2dx2 = double(subs(dgy, xy));

ex = [-fx1,df1dy1;-fx2,df2dx2];
ey = [df1dx1,-fx1;df2dx1,fx2];
J = [df1dx1,df1dy1;df2dx1,df2dx2];

e1 = det(ex/J)
e2 = det(ey/J)

xy = xy + e1
yx = yx + e2
 if abs(xy)<= tol && abs(yx)<= tol
 end
 i = i + 1;
end
