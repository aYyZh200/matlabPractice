function f = Language(x , y , x0)
%��֪���ݵ�x����������x
%��֪���ݵ�y����������y
%��ֵ��x���꣺x0
%��õ��������ղ�ֵ����ʽ��f
%x0���Ĳ�ֵ��f0
syms t;
if( length(x) == length(y) )
    n = length(x);
else 
    disp('x��y��Ϊά�������');
    return;
end
f = 0.0;
for( i = 1:n )
    l = y(i);
    for ( j = 1:i-1 )
        l = l*(t-x(j)) / (x(i)-x(j)) ;
    end
    for ( j = i+1:n )
        l = l*(t-x(j)) / (x(i)-x(j)) ;      %�����������ջ�����
    end
    f = f+l;                                  %�����������ղ�ֵ����
    simplify(f);                             %����
end
f0 = subs(f , 't' , x0 )                   %�����ֵ��ĺ���ֵ

