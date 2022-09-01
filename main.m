clc
clear ALL
%ввод данных
fun = @(x) x.^2-0.1;
x0 = [0,1];
epsilon=1e-3;
%нахождение приближенного корн€
x_end = method_name(fun, x0 ,epsilon)
