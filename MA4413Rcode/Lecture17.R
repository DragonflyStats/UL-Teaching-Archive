

prop.test(c(40,30),c(50,40))


prop.test(30,50,correct=F)



tab <- as.table(rbind(c(10,10),c(40,30)))

addmargins(tab)


tab <- as.table(c(30,20))


chisq.test(tab)



##############



set.seed(16723119)


tab <- as.table(summary(factor(sample(1:6,size=60,rep=T))))




chisq.test(tab)


oi <- tab
ei <- rep(10,6)

oi-ei

sum(((oi-ei)^2)/ei)


##############




set.seed(911289111)

tab <- sample(c(0,2,4,6,8),prob=c(0.15,0.15,0.5,0.15,0.07),size=80,rep=T)

tab[tab>5] <- 6


tab <- as.table(summary(factor(tab)))

tab



chisq.test(tab,p=c(0.2,0.2,0.5,0.05,0.05))

oi <- tab
ei<-80*c(0.2,0.2,0.5,0.05,0.05)
ei<-80*c(0.2,0.2,0.5,0.1)
# chisq.test(tab,p=c(0.2,0.2,0.5,0.1))



sum(round(((oi-ei)^2)/ei,3))

((oi-ei)^2)/ei

#########


set.seed(51298719)

x <- rpois(365,lambda=1)

tab <- table(x)

tab[1] <- tab[1] + 50

tab[2] <- tab[2] - 60
tab[3] <- tab[3] + 10


addmargins(tab)

oi <- tab[][1:5]
oi[5] <- 10

oi

lamh <- round(sum(as.numeric(names(tab))*tab[])/365,3)

lamh

pi <- c(round(dpois(0:3,lambda=lamh),3), 
            1-sum(round(dpois(0:3,lambda=lamh),3)) )

pi

ei <- c(round(365*round(dpois(0:3,lambda=lamh),3),2),
round(365*(1-sum(round(dpois(0:3,lambda=lamh),3))),2))

oi;ei


sum(ei)


round(((oi-ei)^2)/ei,2)

sum(round(((oi-ei)^2)/ei,2))


sum(oi)

chisq.test(oi,p=pi)

pi <- c(0.405, 0.366, 0.165, 0.050, 0.014)

X2 <- chisq.test(oi,p=pi)$statistic

pchisq(X2, df=3, lower=F)




###########



set.seed(1221181)
n <- 100
x <- round(rexp(n,rate=0.333),1)


nclass <- round(sqrt(n))
nclass

nclass <- 6

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

xmax <- 60

hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Laptop Life",
     main="Histogram", cex.lab=1.5)
axis(1,at=breaks,cex.axis=1.5)
axis(2,at=seq(0,xmax,by=2),cex.axis=1.5,las=2)

oi <- hist(x,breaks=breaksless,plot=F)$counts
oi


mean(x)

lamh <- round(1/mean(x),3)

lamh

pi <- c((1-pexp(3, rate=lamh, lower=F)),
(pexp(3, rate=lamh, lower=F)-pexp(6, rate=lamh, lower=F)),
(pexp(6, rate=lamh, lower=F)-pexp(9, rate=lamh, lower=F)),
(pexp(9, rate=lamh, lower=F)-pexp(12, rate=lamh, lower=F)),
(pexp(12, rate=lamh, lower=F)-pexp(15, rate=lamh, lower=F)),
(pexp(15, rate=lamh, lower=F)) )

oi <- hist(x,breaks=breaksless,plot=F)$counts
pi <- round(pi,3)
ei <- pi*n

sum(ei)

ei <- c(ei[1:3], sum(ei[4:6]))
oi <- c(oi[1:3], sum(oi[4:6]))
pi <- c(pi[1:3], sum(pi[4:6]))


ei; oi

sum(ei)

round(((ei-oi)^2)/ei,3)

sum(round(((ei-oi)^2)/ei,3))




chisq.test(oi,p=pi)


chi <- chisq.test(oi,p=pi)
k <- 1
pchisq(chi$statistic, df=(chi$par-k), lower=F)[[1]]


####################

tab <- as.table(matrix(c(8,21,14,73,66,85),nrow=2,ncol=3,byrow=T))

tab <- matrix(c(8,21,14,73,66,85),nrow=2,ncol=3,byrow=T)

addmargins(tab)

ps <- addmargins(tab)/267

oi <- tab
ei <- 267*(ps[1:2,4]%o%ps[3,1:3])

ei

round(addmargins((oi-ei)^2/ei),2)

round(oi-ei,2)

chisq.test(tab)

#####################


tab <- as.table(matrix(c(9,6,10,11,20,26,25,19,74),ncol=3,byrow=T))

addmargins(tab)

200/391


ps <- addmargins(tab)/addmargins(tab)[4,4]


oi <- tab
ei <- addmargins(tab)[4,4]*(ps[1:3,4]%o%ps[4,1:3])

ei

round(addmargins((oi-ei)^2/ei),2)

round(oi-ei,2)


chisq.test(tab)





#####################

