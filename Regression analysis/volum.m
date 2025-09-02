%1、对将要拟合的非线性模型y=ae^(b/x)，建立m-文件volum.m如下：
     function yhat=volum(beta,x)
     yhat=beta(1)*exp(beta(2)./x);