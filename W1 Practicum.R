#vector
color = c('red','green','yellow')
print(color)

#class of a vector
print(class(color))

#vector exp
v1 <- as.vector(seq(1,10))
v2 <- as.vector(seq(11,20))

class(v1)

#vector operation
v4 <- v1+20
v3 <- v1+v2

#dimension and length
dim(v1)
length(v1)

t(v1)

dim(t(t(v1)))

TV <- t(v1)
t(TV)

#vector multiplication
v2 <- 4*v1;v2
v1*v2

v1 <- seq(1,10)
v2 <- seq(1,4)

outer.prod <- v1%*%t(v2);outer.prod

v1%*%t(v1)

v1 <- seq(1,10)
v2 <- seq(11,20)

in.prod <- t(v1)%*%v;in.prod

#combining vector
v1 <- as.vector(seq(1,10))
v2 <- as.vector(seq(11,20))
v3 <- v1+v2

xc <- cbind(v1,v2,v3);xc
xr <- rbind(v1,v2,v3);xr

dim(xc);dim(xr)

#simple statistics using vectors
v = v1;v
one = rep(1,length(v));one

sum.v <- t(one)%*%v;sum.v

mean.v <- sum.v*(1/length(v));mean.v
mean(v)

v-mean.v

var.v <- t(one)%*%((v-mean.v)^2)/(length(v1)-1);var.v

var(v)

#matrices
matrix(1:12,nrow=3)
matrix(1:12,nrow=3,byrow=T)
matrix(1,nrow=2,ncol=2)
matrix(1:12,3,4)
matrix(0,nrow=5,ncol=5)

x <- matrix(1:10,2,5,byrow=T)
x
dim(x)
col(x)
row(x)

x <- matrix(1:12,3,4)
x[row(x)==col(x)]

k <- matrix(1:10,2,5);k
k[1:2,3:4]

k[1:2,1:2]

xij <- matrix(seq(1:40),ncol=4)
dim(xij)
rownames(xij) <- paste('S',seq(1,dim(xij)[1]),sep = "")
colnames(xij) <- paste('V',seq(1,dim(xij)[2]),sep = "")
print(xij)

t(xij)

set.seed(42)
xij <- matrix(sample(seq(0,9),40,replace = T),ncol = 4);xij
rownames(xij) <- paste('S',seq(1,dim(xij)[1]),sep = "")
colnames(xij) <- paste('V',seq(1,dim(xij)[2]),sep = "")
print(xij)

(xij+4)/3

round((xij+4)/3,2)

xij*v

t(xij)%*%v

dim(xij)

n <- dim(xij)[1];n
one <- rep(1,n)
one

x.means <- t(one)%*% xij/n ; x.means

colMeans(xij)
rowMeans(xij)

#matrix inversion
x <- matrix(1:4,2,2)
x.inv <- solve(x)
x.inv

#var & covar matrices
x.diff <- xij - one%*%x.means
x.diff

#data frame
a=c(10,20,15,43,76,41)
a
e=factor(c(10,20,15,43,76,41))
e
b=factor(c("m","f","m","f","m","f"))
b
d=c("m","f","m","f","m","f")
d
c=c(2,5,8,3,6,1)
myframe=data.frame(a,b,c)
myframe
colnames(myframe)=c("Age","Sex","Siblings")
myframe

myframe[,1]
myframe["Age"]
myframe$Age
myframe[3,3]=2
myframe
myframe[,-2]

read.csv("C:/Users/darre/Downloads/orange4.csv")
read.csv("C:/Users/darre/Downloads/orange4.csv",sep=";")
read.csv("C:/Users/darre/Downloads/orange4.csv",sep=";",header = T)
