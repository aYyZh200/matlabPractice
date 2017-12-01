function f = Language(x , y , x0)
%已知数据点x坐标向量：x
%已知数据点y坐标向量：y
%插值点x坐标：x0
%求得的拉格朗日插值多项式：f
%x0处的插值：f0
syms t;
if( length(x) == length(y) )
    n = length(x);
else 
    disp('x和y的为维数不相等');
    return;
end
f = 0.0;
for( i = 1:n )
    l = y(i);
    for ( j = 1:i-1 )
        l = l*(t-x(j)) / (x(i)-x(j)) ;
    end
    for ( j = i+1:n )
        l = l*(t-x(j)) / (x(i)-x(j)) ;      %计算拉格朗日基函数
    end
    f = f+l;                                  %计算拉格朗日插值函数
    simplify(f);                             %化简
end
f0 = subs(f , 't' , x0 )                   %计算插值点的函数值

