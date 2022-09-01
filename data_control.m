function [flag_error, error_report] = data_control(fun, x0 ,epsilon)
%�������� �� "������" 
r=proz(fun,x0,epsilon);
if length(x0)==2 && x0(1)<x0(2)
    if length(epsilon)==1
        if epsilon>0 && epsilon<1
            %�������� ������������
            if fun(x0(1))*fun(x0(2))<=0 
                if r==0
                    flag_error=0;
                    error_report='OK!';
                else
                    flag_error=1;
                    error_report='������: � ������� �� ���� ��������� ���� ����������, �������� �������� ��������';
                    
                end
            else
                flag_error=1;
                error_report='������: ������ ��� ��� �� ���������';
            end
        else
             flag_error=1;
             error_report='������: �������� ����������� ������ ���� �� 0 �� 1 (0<epsilon<1)';
        end
    else
         flag_error=1;
         error_report='������: ����������� ��� ���� ����� �� 0 �� 1 (0<epsilon<1)';
    end
else
     flag_error=1;
     error_report='������: ������ x0 ������� �� ���� ��������� (x0=[a,b] ��� a<b)';
end
end

 
