lam <- 2


dpois()



########

round(qnorm(0.04,lower=F),2)


####

x <- c(4.3, 5.1, 2.6)

mean(x)
var(x)
sd(x)

round(mean(x) - 4.303*(sd(x)/sqrt(3)),2)
round(mean(x) + 4.303*(sd(x)/sqrt(3)),2)

round(mean(x) - 1.96*(sd(x)/sqrt(3)),2)
round(mean(x) + 1.96*(sd(x)/sqrt(3)),2)

round(mean(x) - 3.182*(sd(x)/sqrt(3)),2)
round(mean(x) + 3.182*(sd(x)/sqrt(3)),2)


round(mean(x) - 2.92*(sd(x)/sqrt(3)),2)
round(mean(x) + 2.92*(sd(x)/sqrt(3)),2)

t.test(x)


###



1/12


8/12

(1/4)-(1/12)

8*((1/4)-(1/12))

12*((1/4)-(1/12))

4*((1/4)-(1/12))


#######

n1 <- 6; var1 <- 3
n2 <- 8; var2 <- 12


a <- var1/n1
b <- var2/n2

((a+b)^2)/(((a^2)/(n1-1))+((b^2)/(n2-1)))



##########


set.seed(19824411)

x <- sample(letters[1:4],size=15,rep=T)

x[1:5]
x[6:10]
x[11:15]



y <- sample(letters[1:4],size=15,rep=T)

y[14] <- "a"
y[3] <- "b"
y[4] <- "c"
y[15] <- "c"

y[1:5]
y[6:10]
y[11:15]




############################################

## 2

round(sum(dpois(1:2, 4)),4)
round(sum(dpois(0:3, 4)),4)
round(sum(dpois(0:2, 4)),4) ## correct
round(sum(dpois(2, 4)),4)


round(1/sqrt(50),3)
round(1/50,3)
round(sqrt(50),3)
round(50,3)



## 6 and 7 - B

round(sum(dpois(1:2, 3)),4)
round(sum(dpois(0:3, 3)),4)
round(sum(dpois(0:2, 3)),4) ## correct
round(sum(dpois(2, 3)),4)


round(1/sqrt(40),3)
round(1/40,3)
round(40,3)
round(sqrt(40),3)


## 4

1.5/(4-1.5)



#############

## 6
1/0.025

sig <- 40/sqrt(64)

(48-40)/sig

pnorm((48-40)/sig,lower=F)


pnorm((48-40)/sig,lower=F)
pnorm(1.06,lower=F)




lam <- 0.025




exp(-lam*48)/64

round(exp(-lam*30)*exp(-lam*50),4)
40/60
20*0.025
round(exp(-lam*30) - exp(-lam*50),4) ## correct


## Q9-B

40/60
round(exp(-lam*20) - exp(-lam*40),4) ## correct
round(exp(-lam*20)*exp(-lam*40),4)
20*0.025



###### 10


round(qnorm(0.025, lower=F),2)

(1-0.88)/2

round(qnorm(0.06, lower=F),2)

round(qnorm(0.12, lower=F),2)

round((38.7-32.1) - 1.96*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 1.96*sqrt(3/40 + 8/50),2)

round((38.7-32.1) - 1.55*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 1.55*sqrt(3/40 + 8/50),2)

round((38.7-32.1) - 1.55*sqrt((3^2)/40 + (8^2)/50),2)
round((38.7-32.1) + 1.55*sqrt((3^2)/40 + (8^2)/50),2)

round((38.7-32.1) - 1.17*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 1.17*sqrt(3/40 + 8/50),2)


## 13 - B

(1-0.84)/2
round(qnorm(0.08, lower=F),2)

round(qnorm(0.16, lower=F),2)


round((38.7-32.1) - 1.41*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 1.41*sqrt(3/40 + 8/50),2)

round((38.7-32.1) - 1.41*sqrt((3^2)/40 + (8^2)/50),2)
round((38.7-32.1) + 1.41*sqrt((3^2)/40 + (8^2)/50),2)

round((38.7-32.1) - 0.99*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 0.99*sqrt(3/40 + 8/50),2)

round((38.7-32.1) - 1.96*sqrt(3/40 + 8/50),2)
round((38.7-32.1) + 1.96*sqrt(3/40 + 8/50),2)

##

## 12

985*0.68

492/877


n <- 985
phat <- 670/985

phat*(1-phat)/n


round(phat,3)

round(sqrt(phat*(1-phat)/n),5)

round(sqrt(phat*(1-phat)/670),5)

round((phat*(1-phat)/n),5)

round(phat/sqrt(n),5)


###

## 13

(18.66-15)/2

(18.66-15)/2 - 1
round(pnorm((18.66-15)/4, lower=F),2)
round(pnorm((18.66-15)/2, lower=F),2)
1-round(pnorm((18.66-15)/2, lower=F),2)


## 14

15 - 0.84*2

15 + 0.84*2

round(qnorm(0.2, mean=15, sd=4, lower=F),2)
round(qnorm(0.8, mean=15, sd=2, lower=F), 2)
round(qnorm(0.2, mean=15, sd=2, lower=F),2)
round(qnorm(0.8, mean=15, sd=4, lower=F),2)
round(pnorm((13.32-15)/2, lower=F),2)


## 1 and 2 - B


round(pnorm((18.66-15)/9, lower=F),2)
round(pnorm((18.66-15)/3, lower=F),2)
1-round(pnorm((18.66-15)/3, lower=F),2)
(18.66-15)/3 - 1

round(qnorm(0.8, mean=15, sd=9, lower=F),2)
round(qnorm(0.2, mean=15, sd=9, lower=F),2)
round(qnorm(0.2, mean=15, sd=3, lower=F),2)
round(qnorm(0.8, mean=15, sd=3, lower=F), 2)

round(pnorm((12.48-15)/3, lower=F),2)




####

## 15


x <- c(4.9, 5.3, 7.8)

mean(x)
var(x)

(sum(x^2) - 3*36)/2


round(mean(x) - 4.303*sd(x)/sqrt(3),3)
round(mean(x) + 4.303*sd(x)/sqrt(3),3)

round(mean(x) - 4.303*var(x)/sqrt(3),3)
round(mean(x) + 4.303*var(x)/sqrt(3),3)

round(mean(x) - 2.92*sd(x)/sqrt(3),3)
round(mean(x) + 2.92*sd(x)/sqrt(3),3)

round(mean(x) - 1.96*sd(x)/sqrt(3),3)
round(mean(x) + 1.96*sd(x)/sqrt(3),3)


sample(1:4)


set.seed(51122882)
a <- sample(letters[1:4], size=15, rep=T) # a

set.seed(5119987)
b <- sample(letters[1:4], size=15, rep=T) # b


data.frame(1:15,a,b)


