monte_carlo <- function(alpha,R)
{

pvalue = matrix(nrow=R, ncol=1)
code = matrix(nrow=R, ncol=1)

for(i in 1:R)
{
data <- rnorm(100,0,1)
library(nortest)
ad_test <- ad.test(data)
pvalue <- ad_test$p.value

if(pvalue < alpha)
{
code[i]=0
}
else
{
code[i]=1
}
}

result <- sum(code)/R

list(result=result)
}

