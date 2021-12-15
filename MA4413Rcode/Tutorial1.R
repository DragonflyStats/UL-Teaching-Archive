
x <- c(2, 4, 2, 1, 5, 3, 0, 4, 1, 8)

length(x)

sort(x)

sum(x)
sum(x^2)

mean(x);var(x);sd(x)

summary(x); IQR(x)

#############################
set.seed(12093338)
n <- 30
x <- round(rnorm(n,mean=40,sd=4.1),1)
x[x==41.1][1] <- 41.4

sort(x)

nclass <- 5

x <- sort(x)

max(x) - min(x)

hist(x)
boxplot(x)

mean(x);median(x)


width <- (max(x) - min(x))/nclass
width
width <- ceiling(width)
width

min(x);max(x)

first <- 29

last <- first + nclass*width
last

breaks <- seq(first,last,by=width)
breaks
breaksless <- breaks - 0.1

xmax <- 14

dev.new(width=11,height=5)
hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="CPU Temperature",
     main="Histogram", cex.lab=1.5)
axis(1,at=breaks,cex.axis=1.5)
axis(2,at=seq(0,xmax,by=2),cex.axis=1.5,las=2)


hist(x,breaks=breaksless,plot=F)$counts
round(hist(x,breaks=breaksless,plot=F)$counts/n,3)


summary(x)


dev.new(width=10, height=5)

bp <- boxplot(x,plot=F)
bp$stats <- matrix(c(29.7,36.75,39.45,41.5,47.9))
bp$out <- NA
bxp(bp, ylab="CPU Temperature", xlab="", cex.lab=1.4, cex.axis=1.4,las=1)



#########
