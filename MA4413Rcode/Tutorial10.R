
# diet

xb1 <- 7.1;   xb2 <- 5.2
ssq1 <- 10.1;  ssq2 <- 16.1
n1 <- 42;     n2 <- 50


z <- (xb1-xb2)/(sqrt( (ssq1/n1) + (ssq2/n2) ))
z

2*pnorm(abs(z),lower=F)


####################
# wages

set.seed(19283)

m <- rnorm(5,31.1,1.5)

f <- rnorm(3,30,3)

var.test(f,m)

t.test(m,f,var.equal=T)

round(mean(m),1)
round(sd(m),1)

round(mean(f),1)
round(sd(f),1)

round(var(f),2)/round(var(m),2)

####################
# programmig task

xb1 <- 12.5;   xb2 <- 11.1 
ssq1 <- 3;  ssq2 <- 1.5
n1 <- 15;     n2 <- 15

a <- ssq1/n1
b <- ssq2/n2

a;b

df <- ((a+b)^2)/( ((a^2)/(n1-1))+((b^2)/(n2-1)))

df

z <- (xb1-xb2)/(sqrt( (ssq1/n1) + (ssq2/n2) ))
z

2*pt(abs(z), df,lower=F)


#####################
# rural..urban 


x <- c(20,70)
n <- c(38,116)

prop.test(x,n)

p1 <- x[1]/n[1]
p2 <- x[2]/n[2]
pc <- sum(x)/sum(n)

z <- (p1-p2)/sqrt( (pc*(1-pc))/n[1] + (pc*(1-pc))/n[2] )
z

2*pnorm(abs(z),lower=F)

#####################
# 5 products

set.seed(718111)

tab <- table(sample(c(1,2,3,4,5),prob=c(0.25,0.25,0.25,0.25,0.25),size=100,rep=T))

tab

oi <- tab
e <- 20

(oi-e)^2/e

sum((oi-e)^2/e)


sum(tab)

chisq.test(tab)



#########################

set.seed(42117251)

mu <- 10
sig <- 2

n <- 160

x <- mu + rt(n, df=5)*sig

min(x)
max(x)

x[x<=3] <- 3.5
x[x>=19] <- 18.5

hist(x)
qqnorm(x); qqline(x)


nclass <- 8

range(x)

width <- (max(x) - min(x))/nclass
width
width <- ceiling(width)
width

min(x); max(x)

first <- 3

#3# first <- 21

last <- first + nclass*width
last

breaks <- seq(first,last,by=width)
breaks
breaksless <- breaks - 0.1

xmax <- 45

hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Laptop Life",
     main="Histogram", cex.lab=1.5)
axis(1,at=breaks,cex.axis=1.5)
axis(2,at=seq(0,xmax,by=2),cex.axis=1.5,las=2)


brks <- round(breaksless)[-c(1,nclass+1)]
brks

lb <- length(brks)

xb <- round(mean(x),1)
s <- round(sd(x),1)

xb; s

ps <- pnorm(brks,xb,s,lower=F)

ps <- ps[-lb] - ps[-1]

ps <- c(pnorm(brks[1],xb,s,lower=T), ps, pnorm(brks[lb],xb,s,lower=F) )

sum(ps)

ps <- round(ps,3)
ps

oi <- hist(x,breaks=breaksless,plot=F)$counts
oi

sum(oi)

ei <- ps*n
ei 

sum(ei)

ei <- c(sum(ei[1:2]), ei[-c(1,2,7,8)],sum(ei[7:8]))
ei

oi <- c(sum(oi[1:2]), oi[-c(1,2,7,8)],sum(oi[7:8]))
oi

ps <- c(sum(ps[1:2]), ps[-c(1,2,7,8)],sum(ps[7:8]))
ps


sum( round((oi-ei)^2 / ei,3) )

sum((oi-ei)^2 / ei)

chisq.test(oi, p=ps)

chi <- chisq.test(oi,p=ps)
k <- 2
(chi$par-k)
pchisq(chi$statistic, df=(chi$par-k), lower=F)[[1]]



#########################


#    1, 2, 3, 4+
# A
# B
# C


ps <- c(1/3,1/3,1/3)%o%c(0.2,0.3,0.4,0.1)
ps

ps <- as.vector(ps)

set.seed(187212)

tab <- table(sample(1:length(ps),p=ps, size=300,rep=T))[]

tab <- matrix(tab, nrow=3,ncol=4)

addmargins(tab)

tab[1,2] <- tab[1,2] + 3
tab[2,2] <- tab[2,2] - 5
tab[2,1] <- tab[2,1] - 5
tab[2,2] <- tab[2,2] + 5
tab[3,1] <- tab[3,1] + 7
tab[3,2] <- tab[3,2] - 5

addmargins(tab)


oi <- tab
oi

pi <- addmargins(tab)/addmargins(tab)[4,4]


ei <- round(addmargins(tab)[1:3,5]%o%addmargins(tab)[4,1:4]/300,2)

ei

oi-ei

sum(round((oi-ei)^2/ei,3))

sum((oi-ei)^2/ei)

chisq.test(oi)


############################