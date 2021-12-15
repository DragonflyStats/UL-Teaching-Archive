
dev.new(width=12,height=4)


######################
set.seed(2812102)
set.seed(726718)

set.seed(28121)

n <- 30

mu <- 10
sigma <- 1

simreps <- 100
xbar <- rep(0, simreps)
cl <- rep(0, simreps)
cu <- rep(0, simreps)
inci <- rep(0, simreps)

alpha <- 0.05
za <- qnorm(alpha/2,lower=F)


for(i in 1:simreps){
   xbar[i] <- mean(rnorm(n, mean=mu, sd=sigma))
   cl[i] <- xbar[i] - za*(sigma/sqrt(n))
   cu[i] <- xbar[i] + za*(sigma/sqrt(n))
   inci[i] <- mu >= cl[i] & mu <= cu[i]
}

y <- c(mu-4.8*(sigma/sqrt(n)),mu+4.8*(sigma/sqrt(n)))

# par(mar=c(5.1,4.1,4.1,2.1))
par(mar=c(5.1,5.5,4.1,2.1))



plot(xbar,xlab="Sample Number",ylab="",yaxt="n",
   ylim=y,pch=".",cex=2,col=(2-inci))
#points(cl,pch=20,col=1,cex=0.8)
#points(cu,pch=20,col=1,cex=0.8)


ci95 <- c(mu-za*(sigma/sqrt(n)), mu+za*(sigma/sqrt(n)))

abline(h=mu, lwd=1)
abline(h=ci95[1], lty=2, lwd=1)
abline(h=ci95[2], lty=2, lwd=1)

for(i in 1:simreps){
   lines(c(i,i),c(cl[i],cu[i]),col=(2-inci[i]))
}

axis(2,at=c(mu,ci95),labels=c(expression(mu),~mu-1.96*" "*frac(sigma,sqrt(n)),
   ~mu+1.96*" "*frac(sigma,sqrt(n))),las=2,cex.axis=0.8)


# axis(2,at=c(mu),labels=c(expression(mu)),las=2,cex.axis=0.8)









################

testres <- t.test(c(1,2,3,9,8,2),c(1,8,1,1,3))

testres$est
testres$conf.int

wilcox.test(c(1,2,3,9,8,2),c(1,8,1,1,3),conf.int=T)



prop.test(c(1,10),c(20,40))


prop.test(1,10,correct=T)

((0.1-0.5)/(0.5/sqrt(10)))^2



x <- sample(c(0,1),p=c(0.2,0.8),rep=T,size=30)

#t.test(x,mu=0.5)

sx <- sum(x)
n <- length(x)

prop.test(sx,n,correct=F)

phat <- mean(x)

((phat - 0.5)/(sqrt(phat*(1-phat)/n)))^2

(phat - 0.5)/(sqrt(0.5*(1-0.5)/n))




####################