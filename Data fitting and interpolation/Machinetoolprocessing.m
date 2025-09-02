%要求用Lagrange、分段线性和三次样条三种插值方法计算
x0=[0 3 5 7 9 11 12 13 14 15];
y0=[0 1.2 1.7 2.0 2.1 2.0 1.8 1.2 1.0 1.6];
x=0:0.1:15;
y1=lagrange(x0,y0,x); %前面编写的拉格朗日插值函数
y2=interp1(x0,y0,x);
y3=interp1(x0,y0,x,'spline');
pp1=csape(x0,y0);
y4=ppval(pp1,x);
pp2=csape(x0,y0,'second');
y5=ppval(pp2,x);
[x',y1',y2',y3',y4',y5']
subplot(2,2,1)
plot(x0,y0,'+',x,y1)
title('Lagrange')
subplot(2,2,2)
plot(x0,y0,'+',x,y2)
title('Piecewise linear')
subplot(2,2,3)
plot(x0,y0,'+',x,y4)
title('Spline1')
subplot(2,2,4)
plot(x0,y0,'+',x,y4)
title('Spline2')
dx=diff(x);
dy=diff(y3);
dy_dx=dy./dx;
dy_dx0=dy_dx(1)
ytemp=y3(131:151);
ymin=min(ytemp);
index=find(y3==ymin);
xmin=x(index);
[xmin,ymin]