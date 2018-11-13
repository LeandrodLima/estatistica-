
#cor(x,y)
#apline()
#Questao 1 
dados <- read.csv("DadosCiaMB.csv", header=TRUE,sep=";",dec=",")
attach(dados)# anexa conjunto de dados de modo a chamar as vari´aveis diretamente
x <- c(dados$idade)
y <- c(dados$salario)
plot(y~x, main="Dispersao entre Salario e Idade", ylab="Salario", xlab="Idade", pch=19)

correçaoLinear <-cor(x,y)
ajuste <- lm(y~x)
summary(ajuste)
abline(ajuste)

x2 <- x^2
correçaoLinear <-cor(x2,y)
ajuste <- lm(y~x2)
summary(ajuste)
plot(y~x2, main="Dispersao entre Salario e Idade", ylab="Salario", xlab="Idade", pch=19)
abline(ajuste)

x2 <- log(x)
correçaoLinear <-cor(x2,y)
ajuste <- lm(y~x2)
summary(ajuste)
plot(y~x2, main="Dispersao entre Salario e Idade", ylab="Salario", xlab="Idade", pch=19)
abline(ajuste)

x2 <- sqrt(x)
correçaoLinear <-cor(x2,y)
ajuste <- lm(y~x2)
summary(ajuste)
plot(y~x2, main="Dispersao entre Salario e Idade", ylab="Salario", xlab="Idade", pch=19)
abline(ajuste)

x2 <- 1/x
correçaoLinear <-cor(x2,y)
ajuste <- lm(y~x2)
summary(ajuste)
plot(y~x2, main="Dispersao entre Salario e Idade", ylab="Salario", xlab="Idade", pch=19)
abline(ajuste)