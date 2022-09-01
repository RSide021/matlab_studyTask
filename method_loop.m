function x_end = method_loop(fun, x0 ,epsilon)
%переменные для упрощения расчетов
  a=x0(1);
  b=x0(2);
  k=1;
  xm=(b+a)/2;
  xm1=xm - (fun(xm)*epsilon)/(fun(xm+epsilon)-fun(xm));
  straight(xm, xm1, fun, epsilon, x0);
  legend('график функции','ось ОХ', 'производная', 'секущие','точки секущих','пересечение секущими оси Х','location','best')
  %цикл с расчетами
while ((epsilon<=abs(xm1-xm)) && (epsilon<=abs(fun(xm1))))%здесь идет проверка дельта икс и дельта игрек
   xm=xm1; 
   xm1=xm - (fun(xm)*epsilon)/(fun(xm+epsilon)-fun(xm));
   straight(xm, xm1, fun, epsilon, x0);
    if or((xm1<a), (xm1>b))
        k=k+1;
        xm1=(b+a)/2^k;       
    end
end
x_end=xm1;
end