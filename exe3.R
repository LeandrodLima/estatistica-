x0 <- 5
Xrandom <- 1:1000
for(xi in  2:1000){
  x0 <- (x0 + 1)%%200
  Xrandom[xi] <- x0/200
}
hist(Xrandom)
  
## 2

yRandom <--(log(1-Xrandom))/2

hist(yRandom)


# 3

nBinomial <-rbinom(1000,10, 0.2)

hist(nBinomial)
#
aRandom <- rnorm(1000,0,1)
bRandom <- rnorm(1000,0,1)
cRandom <- rnorm(1000,0,1)

nRandom <- aRandom**2 + bRandom**2 + cRandom**2

hist(nRandom)

