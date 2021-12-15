z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


y <- dnorm(z,0,1)

dev.new(width=11,height=5)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.05,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.05

# alpha <- 0.2

ci <- qnorm(alpha/2, mean=0, sd=1, lower=F)

axis(1,at=c(-ci,0,ci),labels=c(expression(x[1]),~mu,~x[2]), cex.axis=1.5)

lines(c(-ci,-ci), c(-0.1, dnorm(-ci,mean=0,sd=1)), col=1, lwd=3)
lines(c(ci,ci), c(-0.1, dnorm(ci,mean=0,sd=1)), col=1, lwd=3)

polygon(c(-ci,z[z>=-ci & z<=ci],ci),c(0,y[z>=-ci & z<=ci],0),col=1,density=20,lwd=1)
abline(h=0)

text(x=-ci-0.6,y=-0.04,labels=0.025, cex=2, col=1)
text(x=0,y=-0.04,labels=0.95, cex=2, col=1)
text(x=ci+0.6,y=-0.04,labels=0.025, cex=2, col=1)



text(x=-ci-0.6,y=-0.04,labels=~alpha*" / 2", cex=2, col=1)
text(x=0,y=-0.04,labels=~1-alpha, cex=2, col=1)
text(x=ci+0.6,y=-0.04,labels=~alpha*" / 2", cex=2, col=1)




#########



mu <- 30
sigma <- 4

len <- 100
xmin <- mu-3*sigma; xmax <- mu+3*sigma
x <- seq(xmin*(abs(sign(xmin) - 0.2)),xmax*(abs(sign(xmax) + 0.2)),len=len)

alpha <- 0.05

ci1 <- qnorm(alpha/2, mean=mu, sd=sigma, lower=T)
ci2 <- qnorm(alpha/2, mean=mu, sd=sigma, lower=F)


x <- sort(c(x,ci1,ci2))
#len <- len + 2

dev.new(width=11,height=5)

y <- dnorm(x,mean=mu,sd=sigma)

plot(x, y, type="l", ylab="Density",
  xlab="Salary", xlim=c(xmin,xmax),
  main="95% Salary Limits",
  cex.lab=1.5, cex.axis=1.3, cex.main=2, xaxt="n",lwd=3 )



axis(1,at=c(ci1,mu,ci2),labels=round(c(ci1,mu,ci2),2), cex.axis=1.5)

lines(c(ci1,ci1), c(0, dnorm(ci1,mean=mu,sd=sigma)), col=1, lwd=3)
lines(c(ci2,ci2), c(0, dnorm(ci2,mean=mu,sd=sigma)), col=1, lwd=3)

polygon(c(ci1,x[x>=ci1 & x<=ci2],ci2),c(0,y[x>=ci1 & x<=ci2],0),col=1,density=20,lwd=1)
abline(h=0)





###########
alpha <- 0.5

qnorm(alpha/2,mean=0,sd=1,lower=F)


#########



mu <- 115
sigma <- 4

len <- 100
xmin <- mu-3*sigma; xmax <- mu+3*sigma
x <- seq(xmin*(abs(sign(xmin) - 0.2)),xmax*(abs(sign(xmax) + 0.2)),len=len)


dev.new(width=11,height=5)

y <- dnorm(x,mean=mu,sd=sigma)

plot(x, y, type="l", ylab="",
  xlab="Speed", xlim=c(xmin,xmax),
  main="",
  cex.lab=1.5, cex.axis=1.3, cex.main=2, xaxt="n", yaxt="n",lwd=3 )

axis(1,at=seq(xmin,xmax,by=sigma),labels=seq(xmin,xmax,by=sigma), cex.axis=1.5)






#############