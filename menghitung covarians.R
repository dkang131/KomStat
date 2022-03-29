covarian = function(x,y)
{

n = length(x)
m = length(y)
xbar = mean(x)  
ybar = mean(y)

xx = matrix(nrow=n , ncol=1)
yy = matrix(nrow=m , ncol=1)

for(i in 1:n)
{

xx[i] = (x[i]-xbar)
yy[i] = (y[i]-ybar)

}

covarians = sum((xx)*(yy))/(n-1)

list(covarians = covarians)

}

data <- read.csv("C:/Users/darre/Desktop/SEM 4/CompStat/W2_CompStat.csv",sep=";")
data

usia <-  data$Usia;usia
tinggi <- data$Tinggi;tinggi

covarian(usia,tinggi)

cov(usia,tinggi)
