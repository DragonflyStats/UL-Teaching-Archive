
######################

set.seed(142981)

n <- 30

simreps <- 1000
xbar <- rep(0, simreps)

for(i in 1:simreps){
   xbar[i] <- mean(rexp(n, rate=0.001))
#  xbar[i] <- mean(rbinom(n, size=1, prob=0.1))
#   xbar[i] <- mean(rnorm(n, mean=1, sd=0.1))
}

hist(xbar, main=~"Histogram of "*bar(X), xlab=~bar(X))
qqnorm(xbar);qqline(xbar)

shapiro.test(xbar)

hist(xbar, main=~"Histogram of "*bar(X), xlab=~bar(X), xlim=c(0,3000))

qqnorm(xbar,ylim=c(0,3000));qqline(xbar)



##############







####################