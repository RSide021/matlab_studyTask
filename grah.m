function grah(fun,x0)
%������� ��� ��� OX
funx = @(x) 0;
%���������� ������� �� �������� �������
fplot(fun,x0,'b')
grid on
grid minor
hold on
%���������� ��� OX
fplot(funx,x0,'r')
title('������ ��� �����������')
end