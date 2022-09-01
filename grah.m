function grah(fun,x0)
%функция для оси OX
funx = @(x) 0;
%построение графика на заданном участке
fplot(fun,x0,'b')
grid on
grid minor
hold on
%построение оси OX
fplot(funx,x0,'r')
title('График для наглядности')
end