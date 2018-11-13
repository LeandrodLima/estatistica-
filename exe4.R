#1
X <- c(1,2,3,3,5);
media2 <- 1:1000;
media3 <- 1:1000;
media2ComReposicao <- 1:1000;
media3ComReposicao <- 1:1000;
media5ComReposicao <- 1:1000;
media10ComReposicao <-1:1000;
for (i in 1:1000){
  media2[i] <- mean(sample(X,2,FALSE));
  media3[i] <- mean(sample(X,3,FALSE));
  media2ComReposicao[i] <- mean(sample(X,2,TRUE));
  media3ComReposicao[i] <- mean(sample(X,3,TRUE));
  media5ComReposicao[i] <- mean(sample(X,5,TRUE));
  media10ComReposicao[i] <- mean(sample(X,10,TRUE));
}

hist(media2);
hist(media3);
hist(media2ComReposicao);
hist(media3ComReposicao);
hist(media5ComReposicao);
hist(media10ComReposicao);

mean(media2);
mean(media3);
mean(media2ComReposicao);
mean(media3ComReposicao);
mean(media5ComReposicao);
mean(media10ComReposicao);
mean(X);

#2

a <- 1:1000;
b <- 1:1000;
for (i in 1:1000){
  x<- rnorm(100,100,5)
  a[i] <- mean(x)
  b[i] <- var(x)
}
hist(a,main = "distribuçoes
das medias amostrais")
hist(b, main = "variancias amostrais")
#c = distidruiçao estimada 
c <- 1:1000;
d <- 1:1000;
for (i in 1:1000){
  x<- rnorm(100,100,5)
  c[i] <- 1/mean(x)
}
mean(c)
var(c)
