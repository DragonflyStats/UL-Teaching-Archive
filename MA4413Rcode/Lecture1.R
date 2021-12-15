
# IDCs Worldwide Quarterly Mobile Phone Tracker

names <- c("Android", "Apple", "Windows", "BlackBerry", "Other")

p14 <- c(0.847, 0.117, 0.025,0.005,0.006)
p13 <- c(0.796, 0.13, 0.034,0.028,0.012)
p12 <- c(0.693, 0.166, 0.031,0.049,0.061)
p11 <- c(0.361, 0.183, 0.012,0.136,0.308)

set.seed(52193911)
n <- 500
x11 <- sample(factor(1:5,labels=names),size=n,rep=T,prob=p11)
x12 <- sample(factor(1:5,labels=names),size=n,rep=T,prob=p12)

summary(x11)
summary(x12)

summary(x11)/n
summary(x12)/n

dev.new(width=9,height=7)

barplot(summary(x11)[c(1,2,4,5,3)],density=20);abline(h=0)
barplot(summary(x12)[c(1,2,4,5,3)],density=20);abline(h=0)

barplot(sort(summary(x11),decreasing=T),ylim=c(0,200),density=20,
   xlab="Mobile Device", ylab="Frequency");abline(h=0)

barplot(sort(summary(x11)/n,decreasing=T),ylim=c(0,0.4),density=20,
   xlab="Mobile Device", ylab="Relative Frequency");abline(h=0)



dev.new(width=11,height=5)
barplot(sort(summary(x12),decreasing=T),ylim=c(0,400),density=20,
   xlab="Mobile Device", ylab="Frequency", cex.lab=1.2, cex.names=1.2,
   cex.axis=1.2);abline(h=0)


summary(x11)

freq = c(174,138,107,74,7)
mobile = c("Android","Other","Apple","Blackberry","Windows")

barplot(freq, names=mobile)
barplot(freq, names=mobile, xlab="Mobile Device", ylab="Frequency")




#####

set.seed(123012991)
n <- 30
x <- round(rnorm(n,mean=40,sd=10))

nclass <- round(sqrt(n))
nclass

# nclass <- 3
# nclass <- 15

range(x)

width <- (max(x) - min(x))/nclass
width
width <- ceiling(width)
width

min(x); max(x)

first <- 19

#3# first <- 21

last <- first + nclass*width
last

breaks <- seq(first,last,by=width)
breaks
breaksless <- breaks - 0.1

xmax <- 12

dev.new(width=9,height=7)

hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Age of Customer",
     main="Histogram")
axis(1,at=breaks)
axis(2,at=seq(0,xmax,by=2))

hist(x)

hist(x,breaks=breaksless,plot=F)$counts
round(hist(x,breaks=breaksless,plot=F)$counts/n,3)



###### Q5


set.seed(391821181)
n <- 25
x <- round(rexp(n,rate=0.333),1)

sort(x)

nclass <- round(sqrt(n))
nclass

# nclass <- 3
# nclass <- 15

range(x)

width <- (max(x) - min(x))/nclass
width
width <- ceiling(width)
width

min(x); max(x)

first <- 0

#3# first <- 21

last <- first + nclass*width
last

breaks <- seq(first,last,by=width)
breaks
breaksless <- breaks - 0.1

xmax <- 16

dev.new(width=11,height=5)
hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Laptop Life",
     main="Histogram", cex.lab=1.5)
axis(1,at=breaks,cex.axis=1.5)
axis(2,at=seq(0,xmax,by=2),cex.axis=1.5,las=2)


hist(x)

hist(x,breaks=breaksless,plot=F)$counts
round(hist(x,breaks=breaksless,plot=F)$counts/n,3)

sum(x)

sum(x)/n
mean(x)

################ histogram shapes

dev.new(width=9,height=7)

set.seed(81278108)
n <- 500

x <- rexp(n,rate=0.5)
hist(x,freq=F,xlab="x",ylab="Relative Frequency",main="Skewed to the Right")
lines(density(x,bw=0.6),lwd=2,col=4)


# abline(v=mean(x),lwd=3,col=2); abline(v=median(x),lwd=3,col=3); legend("topright", c("mean","median"), text.col=c(2,3), pch="", bty="n", inset = .05)

x <- rexp(n,rate=0.5)
x <- -x+35
hist(x,freq=F,xlab="x",ylab="Relative Frequency",main="Skewed to the Left")
lines(density(x,bw=0.5),lwd=2,col=4)

# abline(v=mean(x),lwd=3,col=2); abline(v=median(x),lwd=3,col=3); legend("topleft", c("mean","median"), text.col=c(2,3), pch="", bty="n", inset = .05)


x <- rnorm(n,mean=0,sd=1)
hist(x,freq=F,xlab="x",ylab="Relative Frequency",main="Symmetrical")
lines(density(x,bw=0.6),lwd=2,col=4)

# abline(v=mean(x),lwd=3,col=2); abline(v=median(x),lwd=3,col=3); legend("topright", c("mean","median"), text.col=c(2,3), pch="", bty="n", inset = .05)






### other option - Not used!
freq <- hist(x,breaks=breaksless,plot=F)$counts
names <- paste(breaks[-(nclass+1)], breaksless[-1], sep=" - ")

barplot(freq, names=names, space=0, density=20, main="Histogram",
        ylab="Frequency", ylim=c(0,10))

abline(h=0)


######
