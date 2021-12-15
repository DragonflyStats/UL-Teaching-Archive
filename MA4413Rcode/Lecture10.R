mu <- 30
sigma <- 4

len <- 100
xmin <- mu-3*sigma; xmax <- mu+3*sigma
x <- seq(xmin*(abs(sign(xmin) - 0.2)),xmax*(abs(sign(xmax) + 0.2)),len=len)

#1 <- 11; x2 <- 14
# <- sort(c(x,x1,x2))
#len <- len + 2

dev.new(width=11,height=5)

y <- dnorm(x,mean=mu,sd=sigma)

plot(x, y, type="l", ylab="Density",
  xlab="Normal random variable", xlim=c(xmin,xmax),
  main=bquote("Normal"*(mu*" = "*.(mu)*", " *sigma*" = "*.(sigma))),
  cex.lab=1.5, cex.axis=1.3, cex.main=2, xaxt="n" )

axis(1,at=seq(18,42,by=4),labels=seq(18,42,by=4), cex.axis=1.3)


polygon(c(x[1],x,x[len]),c(0,y,0),col=1,density=10)

set.seed(628911112)

hist(rnorm(10000,mu,sigma),add=T,freq=F)

lines(c(8,8), c(0, dnorm(8,mean=mu,sd=sigma)), col=2)

polygon(c(x1,x[x>=x1 & x<=x2],x2),c(0,y[x>=x1 & x<=x2],0),col=2,density=20)


###############################

z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


y <- dnorm(z,0,1)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.05,0.45), xaxt="n", yaxt="n")

axis(1,at=seq(-3,3,by=1),labels=c(expression(mu-3*sigma),~mu-2*sigma,
   ~mu-sigma,~mu,~mu+sigma,~mu+2*sigma,~mu+3*sigma), cex.axis=1.5)


polygon(c(0,z[z>=0 & z<=1],1),c(0,y[z>=0 & z<=1],0),col=3,density=20,lwd=1)
polygon(c(1,z[z>=1 & z<=2],2),c(0,y[z>=1 & z<=2],0),col=2,density=20,lwd=1)
polygon(c(2,z[z>=2 & z<=3.5],3.5),c(0,y[z>=2 & z<=3.5],0),col=4,density=20,lwd=1)

polygon(c(-1,z[z>=-1 & z<=0],0),c(0,y[z>=-1 & z<=0],0),col=3,density=20,lwd=1)
polygon(c(-2,z[z>=-2 & z<=-1],-1),c(0,y[z>=-2 & z<=-1],0),col=2,density=20,lwd=1)
polygon(c(-3.5,z[z>=-3.5 & z<=-2],-2),c(0,y[z>=-3.5 & z<=-2],0),col=4,density=20,lwd=1)


lines(c(-2,-2), c(-0.1, dnorm(-2,mean=0,sd=1)), col=1, lwd=3)
lines(c(-1,-1), c(-0.1, dnorm(-1,mean=0,sd=1)), col=1, lwd=3)
lines(c(0,0), c(-0.1, dnorm(0,mean=0,sd=1)), col=1, lwd=3)
lines(c(1,1), c(-0.1, dnorm(1,mean=0,sd=1)), col=1, lwd=3)
lines(c(2,2), c(-0.1, dnorm(2,mean=0,sd=1)), col=1, lwd=3)
lines(z, y, lwd=3)
abline(h=0,lwd=3)


text(x=-2.5,y=-0.04,labels=0.02, cex=2, col=4)
text(x=-1.5,y=-0.04,labels=0.14, cex=2, col=2)
text(x=-0.5,y=-0.04,labels=0.34, cex=2, col=3)
text(x=0.5,y=-0.04,labels=0.34, cex=2, col=3)
text(x=1.5,y=-0.04,labels=0.14, cex=2, col=2)
text(x=2.5,y=-0.04,labels=0.02, cex=2, col=4)




#######################


mu <- 30
sigma <- 4

len <- 100
xmin <- mu-3*sigma; xmax <- mu+3*sigma
x <- seq(xmin*(abs(sign(xmin) - 0.2)),xmax*(abs(sign(xmax) + 0.2)),len=len)

#1 <- 11; x2 <- 14
# <- sort(c(x,x1,x2))
#len <- len + 2

dev.new(width=11,height=5)

y <- dnorm(x,mean=mu,sd=sigma)

plot(x, y, type="l", ylab="Density",
  xlab="Salary", xlim=c(xmin,xmax),
  main=bquote("Normal"*(mu*" = "*.(mu)*", " *sigma*" = "*.(sigma))),
  cex.lab=1.5, cex.axis=1.3, cex.main=2, xaxt="n")

axis(1,at=seq(18,42,by=4),labels=seq(18,42,by=4), cex.axis=1.3)


polygon(c(x[1],x,x[len]),c(0,y,0),col=1,density=10)


lines(c(22,22), c(0, dnorm(22,mean=mu,sd=sigma)))
lines(c(26,26), c(0, dnorm(26,mean=mu,sd=sigma)))
lines(c(30,30), c(0, dnorm(30,mean=mu,sd=sigma)))
lines(c(34,34), c(0, dnorm(34,mean=mu,sd=sigma)))
lines(c(38,38), c(0, dnorm(38,mean=mu,sd=sigma)))




#####################


pnorm(26,mean=mu,sd=sigma,lower=F)

pnorm(26,mean=mu,sd=sigma,lower=F)-pnorm(34,mean=mu,sd=sigma,lower=F)

pnorm(36,mean=mu,sd=sigma,lower=F)



######################



z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


y <- dnorm(z,0,1)

plot(z, y, type="l", xlim=c(-3,3),
      ylab="Density",xlab="Standard Normal Variable",
      cex.lab=1.5, cex.axis=1.3, cex.main=2)






#######################



z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))


y <- dnorm(z,0,1)

plot(z, y, type="l", xlim=c(-3,3),
      ylab="Density",xlab="Z",
      cex.lab=1.5, cex.axis=1.3, cex.main=2)





polygon(c(1.5,z[z>=1.5],3.5),c(0,y[z>=1.5],0),col=1,density=10,lwd=1)

polygon(c(-3.5,z[z<=-1.5],-1.5),c(0,y[z<=-1.5],0),col=1,density=10,lwd=1)


polygon(c(-3.5,z[z<=1.5],1.5),c(0,y[z<=1.5],0),col=1,density=10,lwd=1)


polygon(c(-1.5,z[z>=-1.5],3.5),c(0,y[z>=-1.5],0),col=1,density=10,lwd=1)

#########################
set.seed(112187721)

x <- round(rnorm(40, mean=30, sd=4),3)

hist(x, xlab="Values")
boxplot(x, ylab="Values")


dev.new(width=11,height=5)

qqnorm(x); qqline(x)

shapiro.test(x)

set.seed(112187721)

x <- round(rexp(40, rate=1),3)

hist(x, xlab="Values")
boxplot(x, ylab="Values")

qqnorm(x1); qqline(x1)









#########################
