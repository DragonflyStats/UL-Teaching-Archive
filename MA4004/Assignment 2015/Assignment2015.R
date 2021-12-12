setwd("C:\\Users\\Kevin Burke\\Dropbox\\PhD Work\\Statistics for Computing\\Assignment 2015")

midscores <- read.csv("midscores.csv", header=T)
head(midscores)

hist(midscores[,1])

set.seed(123456789)
midhigh <- midscores[sample(1:45,size=20),"high"]
midlow <- midscores[sample(1:45,size=20),"low"]
mid <- c(midhigh,midlow)

midhigh
midlow
mid

t.test(mid,mu=7.5)
mean(mid)

qqnorm(midhigh);qqline(midhigh)
qqnorm(midlow);qqline(midlow)

hist(mid)
boxplot(mid)

boxplot(midlow,midhigh)



### test the hypothesis that the overall midterm score = 7.5

### test the hypothesis that there is no difference


## A market researcher believes that 40% of individuals use a particular
## brand of mobile device. A sample of 168 individuals were contacted and
## it was found that 50 of these used the brand in question.


## simulation

## simulate 
set.seed(123456789)
hist(rexp(1000, rate=2))


######################

n = 50 # sample size
set.seed(123456789)
simreps = 1000 # simulation replicates
# (just needs to be a big number)
phat = rep(0, simreps)
for(i in 1:simreps){
phat[i] = mean(rbinom(n, 1, prob=0.5))
}
hist(phat)
qqnorm(phat);qqline(phat)

#


round(sum(dbinom(6:10, size=10, p=0.65)),4); pbinom(5, size=10, p=0.65,lower=F)
round(sum(dbinom(0:29, size=100, p=0.2)),4); pbinom(29, size=100, p=0.2,lower=T)
round(sum(dbinom(15:30, size=50, p=0.32)),4)
pbinom(14, size=50, p=0.32,lower=F)-pbinom(30, size=50, p=0.32,lower=F)


round(dpois(8, lambda=6),4)
round(1-sum(dpois(0:35, lambda=41)),4); ppois(35, lambda=41, lower=F)
round(sum(dpois(2:5, lambda=1)),4)
ppois(1, lambda=1, lower=F)-ppois(5, lambda=1, lower=F)

round(pnorm(12, mean=7, sd=2.5, lower=F),4)
round(pnorm(9.8, mean=10, sd=1, lower=F),4)
round(1-pnorm(38, mean=50, sd=5, lower=F),4)
round(pnorm(4, mean=5, sd=3.6, lower=F)-pnorm(8, mean=5, sd=3.6, lower=F),4)



##################################################

midres <- read.table("MidRes.txt", header=T)

head(midres)

midres[,1:15][midres[,1:15]==0] <- 0.25
midres[,1:15][midres[,1:15] <0] <- 0.00
midres$Result <- apply(midres[,1:15],1,sum)

head(midres)

set.seed(18721)
midres$Activity <- midres$Activity + rnorm(n,0,0.0001)

median(midres$Activity)

midres$Sulis <- cut(midres$Activity, c(-1,57,Inf), label=c("low","high"))
summary(midres$Sulis)


set.seed(27120941)

n <- dim(midres)[1]

# midres$Result <- midres$Result + runif(n,-1,1) #rnorm(n,mean=0,sd=1/2) 

midres$Result[midres$Sulis=="low"] <- midres$Result[midres$Sulis=="low"] + 
                                         runif(n/2,-1,-0.5)
midres$Result[midres$Sulis=="high"] <- midres$Result[midres$Sulis=="high"] + 
                                         runif(n/2,0.5,1)

midres$Result[midres$Result<0] <- 0
midres$Result[midres$Result>15] <- 15

midres$Result <- round(midres$Result,2)

hist(midres$Result)

qqnorm(midres$Result);qqline(midres$Result)

boxplot(Result~Sulis,midres)

midhigh <- subset(midres,Sulis=="high")$Result
midlow <- subset(midres,Sulis=="low")$Result

midscores <- cbind(high=midhigh,low=midlow)

write.csv(midscores,"midscores.csv",row.names=F)


