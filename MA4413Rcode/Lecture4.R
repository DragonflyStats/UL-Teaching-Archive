multinomial

X <- as.table(cbind(high=c(140,5),middle=c(600,70),low=c(100,40)))

n <- sum(X)
n


X/n

addmargins(X)

Xp <- addmargins(X/n)

round(Xp,3)

Xp[2,1:3]/Xp[3,1:3]

Xp[2,1:3]/Xp[2,4]


###########


circ <- function(a,b,r,len=100){
   theta <- seq(0,2*pi,len=len)
   cbind(x=r*cos(theta)+a, y=r*sin(theta)+b)
}

len <- 200

c1 <- circ(0.35,0.3,0.25,len)
c2 <- circ(0.65,0.3,0.25,len)

dev.new(width=7,height=4)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=1,lwd=2)
lines(c2, col=1,lwd=2)
text(0.11,0.52,labels=~A,cex=2)
text(0.88,0.52,labels=~B,cex=2)

text(0.5,0.3,labels=~B*" "*intersect()*" "*A,cex=1.5)
text(0.73,0.3,labels=~B*" "*intersect()*" "*A^c,cex=1.5)


c3 <- circ(0.5,0.5,0.35,len)


dev.new(width=11,height=4)

plot("",xlim=c(0,1),ylim=c(0,1.1))
lines(c3, col=1,lwd=2);text(0.12,0.5,labels=~B,cex=1.5)

rect(0.05, 0.1, 0.2, 0.9, lwd=2);text(0.1,0.99,labels=~E[1],cex=1.5)
rect(0.2, 0.1, 0.35, 0.9, lwd=2);text(0.25,0.99,labels=~E[2],cex=1.5)
rect(0.35, 0.1, 0.5, 0.9, lwd=2);text(0.4,0.99,labels=~.,cex=2)
rect(0.5, 0.1, 0.65, 0.9, lwd=2);text(0.55,0.99,labels=~.,cex=2)
rect(0.65, 0.1, 0.8, 0.9, lwd=2);text(0.7,0.99,labels=~.,cex=2)
rect(0.8, 0.1, 0.95, 0.9, lwd=2);text(0.85,0.99,labels=~E[k],cex=1.5)






############