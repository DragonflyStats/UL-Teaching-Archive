set.seed(1912823)   # dataset 1
n1 <- 26;      n2 <- 23
mu1 <- 31;     mu2 <- 28
sig1 <- 3;     sig2 <- 2
x <- round(rnorm(n1,mu1,sig1),1)
y <- round(rnorm(n2,mu2,sig2),1)
boxplot(x,y);var.test(x,y);t.test(x,y,var.equal=T)
x1 <- x; y1 <- y


set.seed(2952811)   # dataset 2
n1 <- 26;      n2 <- 23
mu1 <- 31.5;     mu2 <- 30
sig1 <- 2;     sig2 <- 4
x <- round(rnorm(n1,mu1,sig1),1)
y <- round(rnorm(n2,mu2,sig2),1)
boxplot(x,y);var.test(x,y);t.test(x,y)
x2 <- x; y2 <- y

set.seed(292112)   # dataset 3
n1 <- 26;      n2 <- 23
mu1 <- 28;     mu2 <- 31
sig1 <- 5;     sig2 <- 6
x <- round(rnorm(n1,mu1,sig1),1)
y <- round(rnorm(n2,mu2,sig2),1)
y[y<27] <- round(rnorm(length(y[y<27]),29,1),1); y[y>37] <- round(rnorm(length(y[y>37]),45,3),1)
boxplot(x,y);var.test(x,y);t.test(x,y)
x3 <- x; y3 <- y


hist(x,breaks=seq(min(x), max(x), length=6))
hist(y,breaks=seq(min(y), max(y), length=6))

qqnorm(x); qqline(x)
qqnorm(y); qqline(y)


shapiro.test(x); shapiro.test(y)

var.test(x,y)

t.test(x,y,var.eq=T)

t.test(x,y)

wilcox.test(x,y)



##########################################################

boxplot(x1,y1)
boxplot(x2,y2)
boxplot(x3,y3)

Xmat <- matrix(NA,83,n1)
Ymat <- matrix(NA,83,n2)

Xmat[1:27,] <- matrix(x1,27,n1,byrow=T)
Xmat[28:55,] <- matrix(x2,28,n1,byrow=T)
Xmat[56:83,] <- matrix(x3,28,n1,byrow=T)

Ymat[1:27,] <- matrix(y1,27,n2,byrow=T)
Ymat[28:55,] <- matrix(y2,28,n2,byrow=T)
Ymat[56:83,] <- matrix(y3,28,n2,byrow=T)


mean(x1);mean(x2);mean(x3)
apply(Xmat,1,mean)


mean(y1);mean(y2);mean(y3)
apply(Ymat,1,mean)



set.seed(123456)

for(i in 1:83){
   Xmat[i,] <- sample(Xmat[i,])
   Ymat[i,] <- sample(Ymat[i,])
}

mean(x1);mean(x2);mean(x3)
apply(Xmat,1,mean)


mean(y1);mean(y2);mean(y3)
apply(Ymat,1,mean)


Xmat[1:10,]

write.table(Xmat, file="Xmat.txt")
write.table(Ymat, file="Ymat.txt")



a <- c(28.1,30.1,28.7,30.9,31.3,29.9,33.8,33.0,32.8,34.2,33.8,30.9,27.6,28.3,29.4,28.4,29.7,31.4,27.1,29.3,26.5,26.9,28.6,32.8,30.7,24.8)
b <- c(27.2,29.9,28.2,27.7,28.5,26.8,24.9,29.3,31.6,29.3,27.1,24.1,28.5,26.7,25.5,27.4,30.0,26.0,28.1,27.7,31.1,31.8,30.2)

mean(a);mean(x1)
mean(b);mean(y1)

a <- c(39.5,23.9,23.3,25.2,24.8,28.2,19.8,13.8,30.8,22.9,29.2,20.3,21.0,39.2,31.8,24.4,29.3,29.6,27.4,21.1,26.8,30.7,30.0,34.7,29.6,19.0)
mean(a)

b <- c(39.1,30.5,28.3,28.0,34.0,40.8,33.6,31.9,29.5,32.0,29.7,36.9,32.0,29.4,27.8,36.1,45.3,33.1,28.3,33.9,51.4,34.3,32.3)
mean(b)


##########################################################




x <- rnorm(20,3,1)

meanvec <- rep(NA, 1000)
medvec <- rep(NA,1000)

for(i in 1:1000){

   xnew <- sample(x, rep=T)

   meanvec[i] <- mean(xnew)
   medvec[i] <- median(xnew)   
}


hist(meanvec)

alpha <- 0.05
quantile(meanvec, p=c(alpha/2, 1-alpha/2) )


t.test(x)

alpha <- 0.05
hist(medvec)
quantile(medvec, p=c(alpha/2, 1-alpha/2) )




##############



simvec <- rep(NA,1000)
meanvec <- rep(NA,1000)


for(i in 1:1000){

#   x <- rnorm(20,3,1)
   x <- rexp(100,rate=1)
   meanvec[i] <- median(x)   
   medvec[i] <- mean(x)   
}

hist(x)

hist(medvec)
qqnorm(medvec);qqline(medvec)

hist(meanvec)
qqnorm(meanvec);qqline(meanvec)











#############











#