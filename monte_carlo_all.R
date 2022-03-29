monte_carlo <- function(n,alpha,R)
{

pvalue = matrix(nrow=R, ncol=1)
code_ad = matrix(nrow=R, ncol=1)
code_ks = matrix(nrow=R, ncol=1)
code_sf = matrix(nrow=R, ncol=1)

for(i in 1:R)
{
data <- rnorm(n,0,1)
library(nortest)
ad_test <- ad.test(data)
pvalue_ad <- ad_test$p.value
ks_test <- lillie.test(data)
pvalue_ks <- ks_test$p.value
sf_test <- sf.test(data)
pvalue_sf <- sf_test$p.value

if(pvalue_ad < alpha)
{
code_ad[i]=0
}
else
{
code_ad[i]=1
}


if(pvalue_ks < alpha)
{
code_ks[i]=0
}
else
{
code_ks[i]=1
}


if(pvalue_sf < alpha)
{
code_sf[i]=0
}
else
{
code_sf[i]=1
}
}


result_ad <- sum(code_ad)/R
result_ks <- sum(code_ks)/R
result_sf <- sum(code_sf)/R

list(result.ad=result_ad,result.ks=result_ks,result.sf=result_sf)
}

