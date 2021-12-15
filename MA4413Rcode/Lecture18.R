pi <- c(0.1,0.3,0.4,0.2)


round(-log(pi,2),3)
sum(-log(pi,2)*pi)


pi <- c(0.5,0.25,0.2,0.05)

round(-log(pi,2),3)
round(-log(pi,2)*pi,3)

sum(round(-log(pi,2)*pi,3))



pi <- c(0.1,0.8,0.05,0.05)

round(-log(pi,2),3)
round(-log(pi,2)*pi,3)

sum(round(-log(pi,2)*pi,3))



sum(c(2,1,3,3)*pi)

sum(c(1,1,0,0)*pi)
sum(c(1,1,2,2)*pi)

log(4,2)


######

set.seed(187236)


x <- sample(letters[1:4], size=10, rep=T, prob= c(0.1,0.8,0.05,0.05) )

x[10] <- "d"
 

###############################

pi <- c(0.5,0.3,0.1,0.1)
sum(pi)

HX <- sum(round(-log(pi,2),3)*pi)
HX


cs <- cbind(c(2,2,2,2), c(1,1,2,2), c(1,2,2,3),c(1,2,3,3),
        c(1,2,3,3), c(2,3,1,3))

colSums(2^(-cs))


pi%*%cs
round(HX/(pi%*%cs),2)


##########

pi <- c(0.35,0.2,0.2,0.15,0.1)
ell <- c(2,2,2,3,3)

pi <- c(0.5,0.2,0.15,0.1,0.05)
ell <- c(1,2,3,4,4)

pi <- c(0.3,0.25,0.2,0.12,0.08,0.05)
ell <- c(2,2,2,3,4,4)

pi <- c(0.3,0.2,0.2,0.1,0.1,0.05,0.05)
ell <- c(2,2,2,3,4,5,5)

sum(pi)

round(-log(pi,2),3)

round(round(-log(pi,2),3)*pi,3)

HX <- sum(round(round(-log(pi,2),3)*pi,3))
HX

round(pi*ell,3)

EL <- sum(round(pi*ell,3))
EL

round(HX/EL,3)












#################