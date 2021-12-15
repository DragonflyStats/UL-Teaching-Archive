set.seed(129370)


x <- sort(round(rnorm(6, mean=40, sd=1),1))

qqnorm(x);qqline(x)

x
x^2

sum(x)
sum(x^2)

mean(x); var(x); sd(x)

(sum(x^2)-6*(39.366667^2))/5

(sum(x^2)-6*(mean(x)^2))/5




y <- sort(round(rnorm(3, mean=40, sd=1),1))


t.test(x,y)


n1 <- length(x)
s1 <- sd(x)
n2 <- length(y)
s2 <- sd(y)


sediff <- sqrt(((s1^2)/n1)+((s2^2)/n2))
se1 <- s1/sqrt(n1)
se2 <- s2/sqrt(n2)

nu <- (sediff^4)/( ((se1^4)/(n1-1))+((se2^4)/(n2-1)) )
nu



n1 <- length(x)
n2 <- length(y)

a <- var(x)/n1
b <- var(y)/n2

((a + b)^2)/(((a^2)/(n1-1))+((b^2)/(n2-1)))



######################


set.seed(829370)


x <- sort(round(rnorm(5, mean=32, sd=1.5),1))
x

y <- sort(round(rnorm(4, mean=34, sd=4),1))
y


x^2
y^2


sum(x);sum(x^2)

mean(x)
var(x)
sd(x)

sum(y);sum(y^2)

mean(y)
var(y)
sd(y)

var.test(x,y)

t.test(x,y)

t.test(x,y, var.equal=T)



##########################



x1 <- c(8, 6, 7, 7, 5, 6)
x2 <- c(8, 6, 8, 7, 7)

x1;x2

x1 <- c(10, 8, 7, 8, 6)
x2 <- c(5, 6, 8, 6, 7, 7)






qqnorm(x1);qqline(x1)
qqnorm(x2);qqline(x2)




sum(x1)
sum(x1^2)
sqrt((259-6*(6.5^2))/5)

sqrt((313-5*(7.8^2))/4)

2.2/1.1


sum(x2)
sum(x2^2)
sqrt((262-5*(7.2^2))/4)



mean(x1)
var(x1)
sd(x1)

mean(x2)
var(x2)
sd(x2)

(6.5-7.2)-3.25*sqrt(0.922*(1/6+1/5))

(7.8-6.5)-1.833*sqrt(1.589*(1/6+1/5))


var.test(x1,x2)
t.test(x1,x2,var=T,conf=0.99)
t.test(x1,x2,var=T,conf=0.90)

(5*1.1+4*0.7)/9

(4*2.2+5*1.1)/9


t.test(x1,x2,var=T,conf=0.95)

t.test(x1,x2,var=F,conf=0.95)



##########################


x <- c(13.6, 12.8, 12.3, 11.7, 12.0, 13.3, 10.5) -
     c(13.9, 12.4, 12.2, 11.6, 11.9, 12.7, 10.4)


x;sum(x)

x^2;sum(x^2)

mean(x)
var(x)
sd(x)

t.test(x)


xb <- c(13.6, 12.8, 12.3, 11.7, 12.0, 13.3, 10.5) 
xa <- c(13.9, 12.4, 12.2, 11.6, 11.9, 12.7, 10.4)

t.test(xb,xa,paired=T)


###########################



