%将y=β0+β1x1+β2x2+β11x1^2+β22x2^2化为多元线性回归：
X=[ones(10,1) x1' x2' (x1.^2)' (x2.^2)'];
[b,bint,rint,stats]=regress(y,X);
b,stats