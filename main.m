clc
clear ALL
%���� ������
fun = @(x) x.^2-0.1;
x0 = [0,1];
epsilon=1e-3;
%���������� ������������� �����
x_end = method_name(fun, x0 ,epsilon)
