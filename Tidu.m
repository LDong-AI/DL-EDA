%% 梯度下降法
%牛顿迭代法
function [x,y,n,point] = Tidu(fun,dfunx,dfuny,x,y,EPS,p)
a = feval(fun,x,y);
b = a+1;
n=1
point(n,:) = [x y a];  
while (abs(a-b) >= EPS) 
  a = feval(fun,x,y);
  x = x - p*(feval(dfunx,x,y));
  y = y - p*(feval(dfuny,x,y));
  b = feval(fun,x,y); 
  n = n+1;
  point(n,:) = [x y b]; 
end

