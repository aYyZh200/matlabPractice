function [ a1, a2, a3, y1, y2, y3] =rang_1(n0, a0, h0)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
h=h0;
a1=a0;
y1=f_1(n0,a1);
a2=a1+h;
y2=f_1(n0,a2);
if y2>y1
    h= -h; a3= a1; y3= y1;
    a1= a2;  y1= y2; a2= a3; y2= a3;
    
end
a3= a2+h; y3= f_1(n0, a3);
while  y3<y2
    h=h*2;
     a1= a2;  y1= y2; a2= a3; y2= a3;
     a3= a2+h;  y3= f_1(n0, a3);
end

end

