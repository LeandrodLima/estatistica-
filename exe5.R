#1
n=25
a <- 1:1000;
for (i in 1:1000){
  x<- mean(rnorm(n,10,2))
  a[i]<- x
}
s = sd(a)
ep = 2/sqrt(n)
# o desvio padrao (s) estar proximoo da erro padrao(ep) 

#2
cont =0
n=25
a <- 1:1000;
for (i in 1:1000){
  x<- rnorm(n,10,2)
  a[i]<- mean(x)
  ic <- a[i] + qt(c(0.025,0.975), df = 24) * sd(x)/sqrt(n)
  if(ic[1]<= 10 && ic[2] >= 10){
    cont <- cont +1
  }
}
proporcao = cont/1000
print(proporcao)

#proporçao estar correta por estar proximo da nivel teorico

#3
cont =0
n=100
a <- 1:1000;
for (i in 1:1000){
  x<- rbern(n,0.3)
  a[i]<- mean(x)
  ic <- a[i] + qt(c(0.025,0.975), df = 99) * sd(x)/sqrt(n)
  if(ic[1]<= 0.3 && ic[2] >= 0.3){
    cont <- cont +1
  }
}
proporcao = cont/1000
print(proporcao)
#proporçao estar proxima de 95%

#4

i = function(a,p ){
  n = length(a)
  media = mean(a)
  vari = sd(a)
  lim_inferior <- (1 - p)/2 
  lim_superior <-  1 - lim_inferior
  ic <- media + qt(c(lim_inferior,lim_superior), df = n- 1) * vari/sqrt(n)
  return(ic)
}

valores1 <- c(9.5,10.8, 9.3, 10.7, 10.9, 10.5, 10.7, 9.0, 11.0, 8.4)
valores2 <- c(10.9,9.8,11.4,10.6,9.2,9.7,8.3,10.8,9.8,9.0)
porcentagem <- 0.95
exemplo1 <- i(valores1,porcentagem)
exemplo2 <- i(valores2,porcentagem)
