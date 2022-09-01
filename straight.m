function straight(xm, xm1, fun, epsilon, x0)
  k=(fun(xm+epsilon)-fun(xm))/epsilon;
  c=fun(xm)-xm*k;
  fx=x0(1):0.01:x0(2);
  fy=k*fx+c;
  plot(fx,fy, 'c' )
  plot(xm, fun(xm),'ro',xm1,0,'k.')
  comet(fx, fy)
end