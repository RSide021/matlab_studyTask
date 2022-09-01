function x_end = method_name(fun, x0 ,epsilon)
 %построение графика для наглядности
 grah(fun,x0)
 %вызов первой проверки
 [flag_error, error_report] = data_control(fun, x0 ,epsilon);
 %основное тело
 if flag_error == 1
 %вместо результата выводим ошибку
 x_end = error_report; 
 elseif flag_error == 0 
 %а здесь результат
 x_end = method_loop(fun, x0 ,epsilon);
 else
 x_end = 'ОШИБКА: неизвестно';
 end
end
