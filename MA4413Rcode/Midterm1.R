set.seed(6528102); x1 <- rnorm(400); x2 <- rnorm(400)


dev.new(width=11,height=4)



hist(x1, xlim=c(-3.5,3.5), xlab="Values", main="Histogram", density=5,
   cex.lab=1.5, cex.axis=1.5, cex.main=1.5)

hist(x2, xlim=c(-3.5,3.5), xlab="Values", main="Histogram", density=5,
   cex.lab=1.5, cex.axis=1.5, cex.main=1.5)


set.seed(6528102); x1 <- rpois(6,lambda=5); x2 <- rpois(6,lambda=5)

x1; round(sd(x1),2)
round(var(x1),2)

x2; round(sd(x2),2)
round(var(x2),2)

########

dev.new(width=11,height=4)


bp <- boxplot(x1,plot=F)
bp$stats <- matrix(c(3,5,6,8,10))
bp$out <- NA
bxp(bp, xlab="Battery Life (hours)", main="Boxplot", horiz=T,
    cex.lab=1.5, cex.axis=1.5, cex.main=1.5)

bp$stats <- matrix(c(2,4,7,8,9))

bp$stats <- matrix(c(2,3,5,7,10))
bxp(bp, xlab="Battery Life (hours)", main="Boxplot", horiz=T,
    cex.lab=1.5, cex.axis=1.5, cex.main=1.5, xaxt="n")
axis(1,1:12,cex.axis=1.5)

bp$stats <- matrix(c(2,5,7,9,10))
bxp(bp, xlab="Battery Life (hours)", main="Boxplot", horiz=T,
    cex.lab=1.5, cex.axis=1.5, cex.main=1.5, xaxt="n")
axis(1,1:12,cex.axis=1.5)


#######

set.seed(6528102)

z1 <- c(5, 8, 11, 12, 13, 13, 14, 15, 21)

sample(z1)


z <- c(4, 8, 11, 12, 13, 13, 14, 15, 23)

sample(z)



set.seed(1892321)

sample(c("a","b","c","d"),15,rep=T)

sample(c("a","b","c","d"),15,rep=T)



set.seed(9981272)

sample(c("a","b","c","d"),15,rep=T)

sample(c("a","b","c","d"),15,rep=T)




#


#######
