#### median v mean

dev.new(width=9,height=4)

set.seed(81278108)
n <- 500

x <- rexp(n,rate=0.5)
hist(x,freq=F,xlab="",ylab="",main="",col.axis=0, xlim=c(0,5))
lines(density(x,bw=0.6),lwd=5,col=4)
abline(v=mean(x),lwd=10,col=2); abline(v=median(x),lwd=10,col=3)

x <- rexp(n,rate=0.5)
x <- -x+35
hist(x,freq=F,xlab="",ylab="",main="",col.axis=0,xlim=c(30,max(x)))
lines(density(x,bw=0.6),lwd=5,col=4)
abline(v=mean(x),lwd=10,col=2); abline(v=median(x),lwd=10,col=3)

x <- rnorm(n,mean=0,sd=1)
hist(x,freq=F,xlab="",ylab="",main="",col.axis=0,xlim=c(-2,2))
lines(density(x,bw=0.6),lwd=5,col=4)
abline(v=mean(x+0.005),lwd=10,col=2); abline(v=median(x),lwd=10,col=3)

mean(x);median(x)



##### Q1

x <- c(2, 4, 2, 1, 5, 3, 0, 4, 1, 8)

sort(x)

sum(x)
mean(x)

n <- length(x)
# nclass <- 4; first <- 0; xmax <- 6; breaksless <- breaks


dev.new(width=11,height=5)
hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Data Value",
     main="Histogram", cex.lab=1.5)
axis(1,at=breaks,cex.axis=1.5)
axis(2,at=seq(0,xmax,by=2),cex.axis=1.5,las=2)

hist(x,breaks=breaksless,plot=F)$counts
round(hist(x,breaks=breaksless,plot=F)$counts/n,3)

mean(x)
median(x)



################### variability

dev.new(width=9,height=4.5)

set.seed(162803111)
n <- 1000

x1 <- seq(15,65,length=100)
x2 <- seq(31,49,length=100)

plot("",ylim=c(0,0.17),xlim=c(22,58),ylab="Relative Frequency",
     xlab="Salary (thousands)")
hist(rnorm(n,40,10),add=T,freq=F, density=6,col=1,angle=-45)
hist(rnorm(n,40,2.5),add=T,freq=F, density=6,col=2)

lines(x1,dnorm(x1,mean=40,sd=10),lwd=2,col=1)
lines(x2,dnorm(x2,mean=40,sd=2.5),lwd=2,col=2)

abline(v=45,lty=1,lwd=3,col=8)

legend("topleft", c("high variability","low variability"),
       text.col=c(1,2), pch="", bty="n", inset = .02)



####### example positive sd

x <- c(-10,-9,-5,-4)

mean(x)
sd(x)




################ income

x <- c(25, 29, 33, 35, 40)

mean(x); median(x)

var(x);sd(x)

summary(x)
IQR(x)

###################### laptop


set.seed(391821181)
n <- 25
x <- round(rexp(n,rate=0.333),1)

as.matrix(sort(x)^2)

sum(sort(x)^2)
sum(x)
sum(x)/n
round((sum(x)/n)^2,3)


mean(x);sd(x)


###### set of numbers

x <- c(2, 4, 2, 1, 5, 3, 0, 4, 1, 8)
sort(x)

summary(x)
IQR(x)

########## laptop boxplot

set.seed(391821181)
n <- 25
x <- round(rexp(n,rate=0.333),1)


x <- sort(x)

pq1 <- (n+1)/4
pq2 <- pq1*2
pq3 <- pq1*3

pq1; pq2; pq3

mean(x[6:7]); x[13]; mean(x[19:20])

mean(x);median(x)
summary(x)

mean(x[19:20]) - mean(x[6:7])
IQR(x)


bp <- boxplot(x,plot=F)
bp$stats <- matrix(c(0.1,0.8,2.2,4.8,6.1))
bp$out <- c(12.9,14.3)
bxp(bp, ylab="Battery Life (hours)")


bp$stats
bp$out




dev.new(width=9,height=7)

bxp(bp, ylab="Battery Life (hours)")
points(x=1,y=mean(x),pch=20,cex=1.5)

text(0.62, 0.05, labels="minimum (non outlier)", cex=0.9, font=2)
lines(c(0.78,0.88),c(0.05,0.05),col=2,lty=3,lwd=3)
text(0.62, 6.1, labels="maximum (non outlier)", cex=0.9, font=2)
lines(c(0.78,0.88),c(6.1,6.1),col=2,lty=3,lwd=3)
text(1.16, 13.8, labels="outliers", cex=0.9, font=2)
lines(c(1.02,1.09),c(14,13.7),col=2,lty=3,lwd=3)
lines(c(1.02,1.09),c(13,13.7),col=2,lty=3,lwd=3)
text(1.32, 0.8, labels=~Q[1], cex=1.2, font=2)
lines(c(1.22,1.29),c(0.8,0.8),col=2,lty=3,lwd=3)
text(1.32, 2.2, labels=~Q[2], cex=1.2, font=2)
lines(c(1.22,1.29),c(2.2,2.2),col=2,lty=3,lwd=3)
text(1.32, 4.6, labels=~Q[3], cex=1.2, font=2)
lines(c(1.22,1.29),c(4.6,4.6),col=2,lty=3,lwd=3)

text(0.72, 3.3, labels=~bar(x), cex=1.2, font=2)
lines(c(0.75,0.98),c(3.2,3.2),col=2,lty=3,lwd=3)

points(x=1,y=mean(x),pch=20,cex=1.5)



dev.new(width=11,height=7)
par(mfrow=c(2,1))
par(mar=c(5.1, 4.1, 1.1, 2.1))

boxplot(x, horizontal=T, width=10,ylim=c(0,16),xlab="Battery Life (hours)")
points(x=mean(x),y=1,pch=20,cex=1.5)
hist(x, xlab="Battery Life (hours)",main="",xlim=c(0,16))
abline(v=median(x),lwd=3)
abline(v=mean(x),lwd=3,lty=3)


################## 2 laptops

set.seed(391821181)
n <- 25
x <- round(rexp(n,rate=0.333),1)

pos <- c(1,2,3,4,5,7,9,11,14,19,21)

x <- sort(x)

x1 <- x[pos]
x2 <- x[-pos]


sum(x1)
length(x1)

sum(x2)
length(x2)

mean(x1);median(x1)
mean(x2);median(x2)

summary(x1);summary(x2)


dev.new(width=7, height=5)

bp <- boxplot(x1,x2,plot=F)
bp$stats[,1] <- c(0.1,0.2,0.9,2.3,4.2)
bp$stats[,2] <- c(0.7,1.5,3.15,5.9,6.1)
bp$out <- c(5.6,12.9,14.3)
bxp(bp, ylab="Battery Life (hours)", xlab="Type", cex.lab=1.4, cex.axis=1.4,las=1)
points(x=1,y=mean(x1),pch=20)
points(x=2,y=mean(x2),pch=20)



boxplot(x1,x2)

t.test(x1,x2)

points(x=1,y=mean(x1),pch=20)
points(x=2,y=mean(x2),pch=20)


x[-pos]

######

x[pos]

x[-pos]


#
