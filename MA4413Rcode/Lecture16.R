
z <- seq(-3.5,3.5,len=300)
z <- sort(c(z, seq(-3,3,by=1)))

y <- dnorm(z,0,1)


dev.new(width=11,height=4)

plot(z, y, type="l", xlim=c(-3,3), ylim=c(-0.18,0.45), xaxt="n", yaxt="n", xlab="", ylab="", lwd=3)

alpha <- 0.01

ci <- qnorm(alpha, mean=0, sd=1, lower=F)


axis(1,at=c(ci),labels=c(expression(t[nu][",0.01"])), cex.axis=1.5)

lines(c(ci,ci), c(-0.2, dnorm(ci,mean=0,sd=1)), col=1, lwd=3)

polygon(c(-3.5,z[z<=ci],ci),c(0,y[z<=ci],0),col=1,density=20,lwd=1)
abline(h=0)


text(x=0,y=-0.05,labels=~mu[1]-mu[2]<=0, cex=1, col=1)
text(x=ci+0.45,y=-0.05,labels=~~mu[1]-mu[2]>0, cex=1, col=1)


abline(h=-0.09)

text(x=0,y=-0.15,labels=~"Accept "*H[0], cex=1, col=1)
text(x=ci+0.5,y=-0.15,labels=~"Reject "*H[0], cex=1, col=1)



#################################


set.seed(298201)

x1 <- round(rnorm(6,32,2))
x2 <- round(rnorm(4,30,2))

round(mean(x1),1)
round(mean(x2),1)
round(sd(x1),1)
round(sd(x2),1)

var.test(x1,x2)

t.test(x1,x2,alternative="greater")


t.test(x1,x2,alternative="greater",var.equal=T)


t.test(x1,x2,var.equal=T)




####################################

cpu = c(2.53, 2.55, 2.54, 2.24)
t.test(cpu, mu=2.5)


t.test(cpu, alternative="less", mu=2.5)

uni1 = c(32.1, 32.4, 33.2, 33.3, 33.6)
uni2 = c(35.7, 36.3, 39.4, 40.5)
t.test(uni1,uni2)


cpu1 = c(33, 31, 32, 35, 33, 28)
cpu2 = c(29, 28, 29, 31)
t.test(cpu1, cpu2, alternative="greater")

t.test(cpu1, cpu2, alternative="greater",
var.equal=TRUE)

var.test(cpu1, cpu2)


x = 40
n = 75

prop.test(x, n, p=0.7)



x = c(122,60)
n = c(158,91)
prop.test(x, n)




#################################