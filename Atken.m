function [ f , f0 ] = Atken( x , y , x0 )
%��֪���ݵ�x����������x
%��֪���ݵ�y����������y
%��ֵ��x���꣺x0
%��õİ����ز�ֵ����ʽ��f
%x0���Ĳ�ֵ��f0
syms t ;
if ( length(x) == length(y) )
    n = length(x) ;
else 
    disp('x��y��ά�������') ;
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
