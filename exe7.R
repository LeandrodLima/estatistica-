populacao <- c(4,5,2,9,4,7,1,2,6,4,1,4,4,6,4,5,2,3,2,3,7,2,2,4,6,8,2,4,5,6,8,5,2,3,8
               ,5,2,4,5,9,4,1,6,3,4,2,5,6,4,3,2,3,5,4,4,3,4,5,4,2,9,8,18,
               22,8,9,7,7,9,9,8,7,9,6,14,9,9,8,7,12,14,8,9,8,8,15,8,9,8,8)
#questao 1-A
print (length(populacao))
media <- mean(populacao)
cont <- 0


for (i in  1:90){
  if(populacao[i]> 5 )
    cont <- cont +1
  
}
#Questao B
intervalo = function(a,u,z){
    n = length(a)
    media = mean(a)
    vari = sd(a)
     ic <- media - (c(-z,z) * vari/sqrt(n))
    return(ic)
  }
  p= cont/90
  newcont =0;
   u0= 7;
  for(i in 1:10000){
    amostra <-sample(populacao,20);
   ic = intervalo(amostra,7,1.65) 
   
    if(ic[1]>= u0 && ic[2] <=u0){
      newcont = newcont +1
      
    }
  }
  pAceitaH0 =newcont/10000
  
#Questao C
  intervalo = function(a,u,z){
    n = length(a)
    media = mean(a)
    vari = sd(a)
    ic <- media - (c(-z,z) * vari/sqrt(n))
    return(ic)
  }
  p= cont/90
  newcont =0;
  u0= 7;
  for(i in 1:10000){
    amostra <-sample(populacao,50);
    ic = intervalo(amostra,7,1.65) 
    if(ic[1]>= u0 && ic[2] <=u0){
      newcont = newcont +1
      
    }
  }
  pAceitaH0 =newcont/10000

  