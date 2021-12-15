
coin <- c("H","T")
die <- c(1,2,3,4,5,6)

expand.grid(coin,coin)

expand.grid(coin,coin,coin)

expand.grid(coin,coin,coin,coin)

expand.grid(coin,die)

expand.grid(die,die)






######################################


cols <- c(rgb(1, 0, 0, alpha=0.3), rgb(0, 1, 0, alpha=0.3))


symbols(x=c(0.75,1.25),y=c(0.7,0.7), circles=c(0.5,0.5),xlim=c(0,2),ylim=c(0,2),
fg=2:3, bg=cols, lwd=3, axes=F ,xlab="",ylab="")

rect(0.05, 0.01, 1.95, 1.4, lwd=3)



# text(0.26,1.25,labels=~(A*" "*union()*" "*B)^c,cex=1.2)

#lines(c(0.65,1),c(1.05,1.65), lwd=3,lty=2)
#lines(c(1.35,1),c(1.05,1.65), lwd=3,lty=2)
#lines(c(1,1),c(1.05,1.65), lwd=3,lty=2)


text(1,0.7,labels=~A*" "*intersect()*" "*B,cex=1.2)
#text(1,1.72,labels=~A*" "*union()*" "*B,cex=1.2)

text(1,1.5,labels=~A*" "*union()*" "*B,cex=1.2)
text(0.38,1.2,labels=~A,cex=1.2)
text(1.6,1.2,labels=~B,cex=1.2)



#########################

circ <- function(a,b,r,len=100){
   theta <- seq(0,2*pi,len=len)
   cbind(x=r*cos(theta)+a, y=r*sin(theta)+b)
}

len <- 200

c1 <- circ(0.35,0.3,0.25,len)
c2 <- circ(0.65,0.3,0.25,len)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=2,lwd=2)
lines(c2, col=3,lwd=2)

polygon(c1,col=2, density=8)
polygon(c2,col=3, density=8, angle=-45)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=1,lwd=2)
lines(c2, col=1,lwd=2)
text(0.12,0.52,labels=~A,cex=2)
text(0.87,0.52,labels=~B,cex=2)

cunion <- rbind( c2[c2[,1]>=0.5 & c2[,2] >= 0.3, ],
c1[c1[,1]<=0.5 & c1[,2] >= 0.3, ],
c1[c1[,1]<0.5 & c1[,2] < 0.3, ],
c2[c2[,1]>0.5 & c2[,2] < 0.3, ] )

polygon(cunion,col=1, density=8)


plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=1,lwd=2)
lines(c2, col=1,lwd=2)
text(0.12,0.52,labels=~A,cex=2)
text(0.87,0.52,labels=~B,cex=2)


cint <- rbind( c1[c1[,1]>=0.5 & c1[,2] >= 0.3, ],
c2[c2[,1]<=0.5 & c2[,2] >= 0.3, ],
c2[c2[,1]<0.5 & c2[,2] < 0.3, ],
c1[c1[,1]>0.5 & c1[,2] < 0.3, ] )

polygon(cint,col=1, density=8)



plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=1,lwd=2)
lines(c2, col=1,lwd=2)
text(0.12,0.52,labels=~A,cex=2)
text(0.87,0.52,labels=~C,cex=2)

text(0.29,0.35,labels=~TH,cex=1.5)
text(0.29,0.25,labels=~HT,cex=1.5)

text(0.49,0.3,labels=~HH,cex=1.5)
text(0.71,0.3,labels=~TT,cex=1.5)

rect(0.00, 0.00, 1, 0.6, lwd=3)



plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=1,lwd=2)
lines(c2, col=1,lwd=2)
text(0.12,0.52,labels=~B,cex=2)
text(0.87,0.52,labels=~C,cex=2)

text(0.49,0.3,labels=~TT,cex=1.5)
text(0.71,0.3,labels=~HH,cex=1.5)
text(0.05,0.16,labels=~TH,cex=1.5)
text(0.05,0.08,labels=~HT,cex=1.5)

rect(0.00, 0.00, 1, 0.6, lwd=3)



c1 <- circ(0.35,0.3,0.2,len)
c2 <- circ(0.65,0.3,0.2,len)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=2,lwd=2)
lines(c2, col=3,lwd=2)

polygon(c1,col=2, density=10)
polygon(c2,col=3, density=10, angle=-45)


c1 <- circ(0.28,0.3,0.2,len)
c2 <- circ(0.72,0.3,0.2,len)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=2,lwd=2)
lines(c2, col=3,lwd=2)

polygon(c1,col=2, density=10)
polygon(c2,col=3, density=10, angle=-45)



c1 <- circ(0.36,0.3,0.2,len)
c2 <- circ(0.64,0.3,0.2,len)
c3 <- circ(0.5,0.5,0.2,len)

plot("",xlim=c(0,1),ylim=c(0,1))
lines(c1, col=2,lwd=2)
lines(c2, col=3,lwd=2)
lines(c3, col=4,lwd=2)

polygon(c1,col=2, density=10)
polygon(c2,col=3, density=10, angle=-45)
polygon(c3,col=4, density=10, angle=180)



####
