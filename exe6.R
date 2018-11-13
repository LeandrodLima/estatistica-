populacao <- c(4,5,2,9,4,7,1,2,6,4,1,4,4,6,4,5,2,3,2,3,7,2,2,4,6,8,2,4,5,6,8,5,2,3,8
                 ,5,2,4,5,9,4,1,6,3,4,2,5,6,4,3,2,3,5,4,4,3,4,5,4,2,9,8,18,
                 22,8,9,7,7,9,9,8,7,9,6,14,9,9,8,7,12,14,8,9,8,8,15,8,9,8,8)
#questao 1-A
media <- mean(populacao)
cont <- 0;
for (i in  1:90){
  if(populacao[i]> 5 )
    cont <- cont +1
    
}
proporcao = cont/90

#questao 1-B
intervalo = function(a,p ){
  n = length(a)
  media = mean(a)
  vari = sd(a)
  lim_inferior <- (1 - p)/2 
  lim_superior <-  1 - lim_inferior
  ic <- media + qt(c(lim_inferior,lim_superior), df = n- 1) * vari/sqrt(n)
  return(ic)
}

for(i in 1:100){
  amostra <-sample(populacao,20);
  print(intervalo(amostra,0.95))
}
  
#questao 1-C

populacao <- c(4,5,2,9,4,7,1,2,6,4,1,4,4,6,4,5,2,3,2,3,7,2,2,4,6,8,2,4,5,6,8,5,2,3,8
               ,5,2,4,5,9,4,1,6,3,4,2,5,6,4,3,2,3,5,4,4,3,4,5,4,2,9,8,18,
               22,8,9,7,7,9,9,8,7,9,6,14,9,9,8,7,12,14,8,9,8,8,15,8,9,8,8)

intervalo2 = function(a,perc ){
  n = length(a)
  cont = 0
  for (i in  1:n){
    if(a[i]> 5 )
      cont <- cont +1
    
  }
  p = cont/n
  
  zy <- qnorm((1+perc)/2)
  err <-zy*(sqrt((p*(1-p))/n))
  
  ic <- p + c(-1*err,err)
  return(ic)
}

media <- mean(populacao)
cont <- 0;
for (i in  1:90){
  if(populacao[i]> 5 )
    cont <- cont +1
  
}
proporcao = cont/90
cont2 =0
for(i in 1:100){
  amostra <-sample(populacao,20);
  ic <-intervalo2(amostra,0.95)
  if(ic[1]<= proporcao && ic[2] >= proporcao){
    cont2 <- cont2 +1
  }
}
novaProporcao=cont2/100
