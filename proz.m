function r=proz(fun,x0,epsilon)
[X Y]=fplot(fun,x0,eps);
Xi=diff(X);
Yi=diff(Y);
dd=Yi./Xi;
X11=X(2:end);
plot(X11,dd, 'm');
r=0;
for k=2:length(dd)
    if dd(k)*dd(k-1)<=0
        r=1;
    end
end

