function x_end = method_name(fun, x0 ,epsilon)
 %���������� ������� ��� �����������
 grah(fun,x0)
 %����� ������ ��������
 [flag_error, error_report] = data_control(fun, x0 ,epsilon);
 %�������� ����
 if flag_error == 1
 %������ ���������� ������� ������
 x_end = error_report; 
 elseif flag_error == 0 
 %� ����� ���������
 x_end = method_loop(fun, x0 ,epsilon);
 else
 x_end = '������: ����������';
 end
end
