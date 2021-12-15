
n <- 10000
p <- 0.0001

lam <- n*p
lam

x <- 1

true <- dbinom(x,size=n,prob=p)
approx <- dpois(x,lam=lam)

true
approx

(approx-true)/true

choose(n,x)*(p^x)*((1-p)^(n-x))
exp(-lam)*((lam^x)/(factorial(x)))


#

1-round(sum(dpois(0,lambda=1)),4)

sum(dpois(4:6,lambda=3))

ppois(6,lambda=3,lower=F)

#


sum(dbinom(2:3,size=3,prob=0.1))

sum(dbinom(3:5,size=5,prob=0.1))

pbinom(10,size=100,prob=0.1,lower=F)

sum(dbinom(0,size=20,prob=0.00856))

#
