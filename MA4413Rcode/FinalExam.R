set.seed(1982273)


x1 <- sort(round(rexp(8,rate=0.5),1)+1)
x2 <- sort(round(rexp(8,rate=0.5),1)+2.5)


x1;x2

x1 <- c(1,1,1.8,2.3,2.3,3.3,3.5,5.5)
x2 <- c(2.7,2.9,4.1,4.3,5.7,6.6,9,15)

boxplot(x1,x2)


t.test(x1,x2)




############

501.5-1.96*(sqrt(9.3/40))
501.5+1.96*(sqrt(9.3/40))

1.96*(sqrt(9.3/143))

(1.96*sqrt(9.3)/0.5)^2



######################################

set.seed(29811)

mu <- 15
sd <- 10
n <- 40

# x <- round(rnorm(n,mu,sd),0)

x <- round(rexp(n,rate=1/mu)+10,0)

x <- ifelse(x<14,15,x)

x <- sort(x)

hist(x)

x

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

first <- 12

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


######################################

set.seed(2123311)

x1 <- rnorm(8,1.3,0.3)
x2 <- rnorm(12,1,0.2)


x1;x2

round(c(mean(x1),var(x1)),3)
round(c(mean(x2),var(x2)),3)

var.test(x1,x2)
t.test(x1,x2,var.equal=T)




#######

set.seed(189273)

x <- rnorm(5,10,4)

x <- round(x)

x

t.test(x, conf=0.9)


median(x)
mean(x)
var(x)
sd(x)




#############


p1 <- round(pnorm(31,30,1,lower=F),4)
p1

p2 <- round(pnorm(31,29,5,lower=F),4)
p2

0.8*p1 + 0.2*p2


(0.8*(1-p1))/(1-(0.8*p1 + 0.2*p2))



################


prop.test(43,65,alternative="greater")


pnorm(25,mean=20,sd=3,lower=F)

qnorm(0.1,mean=20,sd=3,lower=F)

pnorm(19.5,mean=20,sd=(3/sqrt(40)),lower=F)

pnorm(0,mean=(20-18),sd=sqrt(3^2+2^2),lower=T)



################


sample(c("a","e","b","c"),size=6,rep=T,p=c(0.45,0.25,0.2,0.1))


