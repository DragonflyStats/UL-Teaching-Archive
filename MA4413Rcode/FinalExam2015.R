set.seed(198227)
x <- round(-rexp(12,rate=1.5)+3.5,1)*10

boxplot(x)

sort(x)

t.test(x, mu=20)

x <- x/10

t.test(x, mu=2)

######################################

set.seed(19823)


mu <- 15
sd <- 3
n <- 50

x <- round(rnorm(n,mu,sd),0)

x <- sort(x)

hist(x)

nclass <- 7

range(x)

width <- (max(x) - min(x))/nclass
width
width <- ceiling(width)
width

min(x); max(x)

first <- 5
last <- first + nclass*width
last

breaks <- seq(first,last,by=width)
breaks
breaksless <- breaks - 0.1

xmax <- 20


hist(x,breaks=breaksless,axes=F,ylim=c(0,xmax),xlab="Salary",
     main="Histogram")
axis(1,at=breaks)
axis(2,at=seq(0,xmax,by=2))

hist(x,breaks=breaksless,plot=F)$counts
round(hist(x,breaks=breaksless,plot=F)$counts/n,3)


x[1:10];x[1:10+10];x[1:10+20];x[1:10+30];



#############


p1 <- 0.15
p2 <- 0.04

0.3*p1 + 0.7*p2


(0.3*(1-p1))/(1-(0.3*p1 + 0.7*p2))


0.3*(1-p1)

#######

set.seed(189273)

x <- rnorm(6,7,2)

x <- round(x)

x

x <- x - 4
x

t.test(x, conf=0.95)


median(x)
mean(x)
var(x)
sd(x)


############

0.3*168


phat <- 50/168

phat - 2.58*sqrt(phat*(1-phat)/168)
phat + 2.58*sqrt(phat*(1-phat)/168)

2.58*sqrt(phat*(1-phat)/1500)

2.58*sqrt(phat*(1-phat)/1546)


prop.test(50,168, conf=0.99)



############

(83.1 - 80.1)/sqrt(30.6/40 + 18.5/40)


##################################################

80*(0.04)

sum(dbinom(2:5,size=15,prob=0.04))

sum(dbinom(9:100,size=100,prob=0.04))


1-sum(dpois(0:2,lambda=3.5))

sum(dpois(15:25,lambda=21))

1 - exp(-7*5/60)

############



set.seed(17665131)

x1 <- rnorm(9,mean=8,sd=1)
x2 <- rnorm(7,mean=7.5,sd=3)


x1;x2


round(c(mean(x1),sd(x1)),2)
round(c(mean(x2),sd(x2)),2)

var.test(x1,x2)
t.test(x1,x2,var.equal=F)


##

pnorm(25,mean=20,sd=3,lower=T)

pnorm(23.5,mean=20,sd=3,lower=F)-pnorm(28.4,mean=20,sd=3,lower=F)

qnorm(0.35,mean=20,sd=3,lower=F)

pnorm(20.8,mean=20,sd=(3/sqrt(45)),lower=F)

pnorm(45.7,mean=(20+20),sd=sqrt(3^2+3^2),lower=F)


#################


15

3/60

(1/3)*60

15/20



1/(20 - 15) # ET
15/(20 - 15) # EN

1/(20 - 15) - 1/20 # ETq
15*(1/(20 - 15) - 1/20) # ENq

60*(1/(20 - 15)) # ET
60*(1/(20 - 15) - 1/20) # ETq

lam <- 20 - 15

exp(-lam*45/60)

lams  <- 15 + 60/5

60/(27-15)

################


sample(c("a","e","b","c"),size=6,rep=T,p=c(0.45,0.25,0.2,0.1))


