function [ f , f0 ] = Atken( x , y , x0 )
%已知数据点x坐标向量：x
%已知数据点y坐标向量：y
%插值点x坐标：x0
%求得的艾肯特插值多项式：f
%x0处的插值：f0
syms t ;
if ( length(x) == length(y) )
    n = length(x) ;
else 
    disp('x和y的维数不相等') ;
    return;
end
y1(1:n) = t ;
for (i=1:n-1)
    for(j=i+1:n)
        y1(j) = y(j)*(t-x(i))/(x(j)-x(i))+y(i)*(t-x(j))/(x(i)-x(j));
    end
 f = y1(n) ;
 simplify(y1);
end
 f0 = subs(y1(n), 't', x0);         
