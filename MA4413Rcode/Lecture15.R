z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


y <- dnorm(z,0,1)

dev.new(width=11,height=4)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.06,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.05

# alpha <- 0.2

ci <- qnorm(alpha/2, mean=0, sd=1, lower=F)

axis(1,at=c(-ci,ci),labels=c(expression(-z[alpha/2]),~z[alpha/2]), cex.axis=1.5)

lines(c(-ci,-ci), c(-0.1, dnorm(-ci,mean=0,sd=1)), col=1, lwd=3)
lines(c(ci,ci), c(-0.1, dnorm(ci,mean=0,sd=1)), col=1, lwd=3)

polygon(c(-ci,z[z>=-ci & z<=ci],ci),c(0,y[z>=-ci & z<=ci],0),col=1,density=20,lwd=1)
abline(h=0)

text(x=-ci-0.6,y=-0.04,labels=~"Reject "*H[0], cex=1.5, col=1)
text(x=0,y=-0.04,labels=~"Accept "*H[0], cex=1.5, col=1)
text(x=ci+0.6,y=-0.04,labels=~"Reject "*H[0], cex=1.5, col=1)


############

set.seed(51291)


x <- round(rnorm(4,2.5,0.2),2)

sum(x)
sum(x^2)

sum(x)/4

sqrt((24.3726 - 4*(2.465^2))/3)

t.test(x,mu=2.5)

mean(x)
sd(x)

######

z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


dev.new(width=11,height=4)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.18,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.05

# alpha <- 0.2

ci <- qnorm(alpha/2, mean=0, sd=1, lower=F)

axis(1,at=c(-ci,ci),labels=c(expression(-z[alpha/2]),~z[alpha/2]), cex.axis=1.5)

lines(c(-ci,-ci), c(-0.2, dnorm(-ci,mean=0,sd=1)), col=1, lwd=3)
lines(c(ci,ci), c(-0.2, dnorm(ci,mean=0,sd=1)), col=1, lwd=3)

polygon(c(-ci,z[z>=-ci & z<=ci],ci),c(0,y[z>=-ci & z<=ci],0),col=1,density=20,lwd=1)
abline(h=0)


text(x=-ci-0.6,y=-0.05,labels=~mu<mu[0], cex=1.5, col=1)
text(x=0,y=-0.05,labels=~mu==mu[0], cex=1.5, col=1)
text(x=ci+0.6,y=-0.05,labels=~mu>mu[0], cex=1.5, col=1)

abline(h=-0.09)

text(x=-ci-0.6,y=-0.15,labels=~"Reject "*H[0], cex=1.5, col=1)
text(x=0,y=-0.15,labels=~"Accept "*H[0], cex=1.5, col=1)
text(x=ci+0.6,y=-0.15,labels=~"Reject "*H[0], cex=1.5, col=1)


####################

z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


dev.new(width=11,height=4)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.18,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.05

# alpha <- 0.2

ci <- qnorm(alpha, mean=0, sd=1, lower=F)

axis(1,at=c(-ci),labels=c(expression(-z[alpha])), cex.axis=1.5)

lines(c(-ci,-ci), c(-0.2, dnorm(-ci,mean=0,sd=1)), col=1, lwd=3)
polygon(c(-ci,z[z>=-ci],3.5),c(0,y[z>=-ci],0),col=1,density=20,lwd=1)
abline(h=0)


text(x=-ci-0.6,y=-0.05,labels=~mu<mu[0], cex=1.5, col=1)
text(x=0,y=-0.05,labels=~mu>=mu[0], cex=1.5, col=1)

abline(h=-0.09)

text(x=-ci-0.6,y=-0.15,labels=~"Reject "*H[0], cex=1.5, col=1)
text(x=0,y=-0.15,labels=~"Accept "*H[0], cex=1.5, col=1)


#####


z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


dev.new(width=11,height=4)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.18,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.05

# alpha <- 0.01

ci <- qnorm(alpha, mean=0, sd=1, lower=F)


axis(1,at=c(ci),labels=c(expression(z[alpha])), cex.axis=1.5)

# axis(1,at=c(ci),labels=2.33, cex.axis=1)

lines(c(ci,ci), c(-0.2, dnorm(ci,mean=0,sd=1)), col=1, lwd=3)

polygon(c(-3.5,z[z<=ci],ci),c(0,y[z<=ci],0),col=1,density=20,lwd=1)
abline(h=0)


text(x=0,y=-0.05,labels=~mu<=mu[0], cex=1.5, col=1)
text(x=ci+0.6,y=-0.05,labels=~mu>mu[0], cex=1.5, col=1)

abline(h=-0.09)

text(x=0,y=-0.15,labels=~"Accept "*H[0], cex=1.5, col=1)
text(x=ci+0.6,y=-0.15,labels=~"Reject "*H[0], cex=1.5, col=1)



text(x=0,y=-0.05,labels=~mu<=30, cex=1, col=1)
text(x=ci+0.5,y=-0.05,labels=~mu>30, cex=1, col=1)

abline(h=-0.09)

text(x=0,y=-0.15,labels=~"Accept "*H[0], cex=1, col=1)
text(x=ci+0.5,y=-0.15,labels=~"Reject "*H[0], cex=1, col=1)




###########
