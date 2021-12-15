
dev.new(width=9,height=7)


p <- 0.2
n <- 10

probs <- dbinom(0:n, size=n, prob=p)
names(probs) <- 0:n

barplot(probs, xlab="Number of events in n trials", ylab="Probability",
  density=10, ylim=c(0,0.33), space=0.5,
  main=bquote("Binomial"*(n*" = "*.(n)*", " *p*" = "*.(p))),
  cex.lab=1.5, cex.names=1.3, cex.axis=1.3, cex.main=2 )


x <- 4
barplot(c(rep(0,x-1),probs[[x]]), density=20, border=c(rep(1,x-1),2), 
   axes=F, col=2, space=0.5, add=T)

box()
axis(2, at=c(0.05,0.15,0.25), labels=c(0.05,0.15,0.25), cex.axis=1.3, tick=F)


#

lambda <- 3

n <- ceiling(qpois(0.999, lambda=lambda)*1.4)

probs <- dpois(0:n, lambda=lambda)
names(probs) <- 0:n

barplot(probs,  xlab="Number of events in an interval (of time / space / volume)", 
  ylab="Probability", density=10, ylim=c(0,0.25), space=0.5,
  main=bquote("Poisson"*(lambda*" = "*.(lambda))),
  cex.lab=1.5, cex.names=1.3, cex.axis=1.3, cex.main=2 )


x <- 7
barplot(c(rep(0,x-1),probs[[x]]), density=20, border=c(rep(1,x-1),2), 
    col=2, axes=F, space=0.5, add=T)

box()

axis(1, at=c(17.5,20.5), labels=c(11,13), cex.axis=1.3, tick=F)

#



lambda <- 0.5

tmax <- round(qexp(0.99, rate=lambda))
len <- 100
t <- seq(0,tmax*1.1,len=len)
t1 <- 4; t2 <- 6
t <- sort(c(t,t1,t2))
len <- len + 2
y <- dexp(t, rate=lambda)

plot(t, y, xlim=c(0,tmax), type="l", ylab="Density",
  xlab="Time / space / volume until next event",
  main=bquote("Exponential"*(lambda*" = "*.(lambda))), 
  cex.lab=1.5, cex.axis=1.3, cex.main=2)

polygon(c(t[1],t,t[len]),c(0,y,0),col=1,density=10)


lines(c(2,2), c(0, dexp(2, rate=lambda)), col=2)

polygon(c(t1,t[t>=t1 & t<=t2],t2),c(0,y[t>=t1 & t<=t2],0),col=2,density=20)


pexp(4,rate=lambda,lower=F) - pexp(6,rate=lambda,lower=F)


####

mu <- 10
sigma <- 2

len <- 100
xmin <- mu-3*sigma; xmax <- mu+3*sigma
x <- seq(xmin*(abs(sign(xmin) - 0.2)),xmax*(abs(sign(xmax) + 0.2)),len=len)

x1 <- 11; x2 <- 14
x <- sort(c(x,x1,x2))
len <- len + 2


y <- dnorm(x,mean=mu,sd=sigma)

plot(x, y, type="l", ylab="Density",
  xlab="Normal random variable", xlim=c(xmin,xmax),
  main=bquote("Normal"*(mu*" = "*.(mu)*", " *sigma*" = "*.(sigma))),
  cex.lab=1.5, cex.axis=1.3, cex.main=2 )

polygon(c(x[1],x,x[len]),c(0,y,0),col=1,density=10)


lines(c(8,8), c(0, dnorm(8,mean=mu,sd=sigma)), col=2)

polygon(c(x1,x[x>=x1 & x<=x2],x2),c(0,y[x>=x1 & x<=x2],0),col=2,density=20)



pnorm(11,mean=mu,sd=sigma,lower=F) - pnorm(14,mean=mu,sd=sigma,lower=F)

#






#

