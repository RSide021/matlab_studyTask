function [flag_error, error_report] = data_control(fun, x0 ,epsilon)
%проверка на "дурака" 
r=proz(fun,x0,epsilon);
if length(x0)==2 && x0(1)<x0(2)
    if length(epsilon)==1
        if epsilon>0 && epsilon<1
            %проверка Вейерштрасса
            if fun(x0(1))*fun(x0(2))<=0 
                if r==0
                    flag_error=0;
                    error_report='OK!';
                else
                    flag_error=1;
                    error_report='ОШИБКА: У функции на этом интервале есть экстремумы, возьмите интервал поменьше';
                    
                end
            else
                flag_error=1;
                error_report='ОШИБКА: Корней нет или их несколько';
            end
        else
             flag_error=1;
             error_report='ОШИБКА: Значение погрешности должно быть от 0 до 1 (0<epsilon<1)';
        end
    else
         flag_error=1;
         error_report='ОШИБКА: Погрешность это одно число от 0 до 1 (0<epsilon<1)';
    end
else
     flag_error=1;
     error_report='ОШИБКА: Вектор x0 состоит из двух элементов (x0=[a,b] где a<b)';
end
end

 
