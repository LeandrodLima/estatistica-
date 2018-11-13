dados <- read.csv("DadosCiaMB.csv", header=TRUE,sep=";",dec=",")
attach(dados)# anexa conjunto de dados de modo a chamar as vari´aveis diretamente
instrucao <- table(dados$Instrucao)
regiao <- table(dados$procedencia)
filhos <- table(dados$Filhos)

barplot(instrucao)
barplot(regiao)
barplot(filhos)

hist(dados$salario, main = "Salario")
hist(dados$Filhos, main = "Filhos")

#salario
var(dados$salario)
median(dados$salario)
mean(dados$salario)

#filhos
var(na.omit(dados$Filhos))
median(na.omit(dados$Filhos))
mean(na.omit(dados$Filhos))

#idade 
var(dados$idade)
median(dados$idade)
mean(dados$idade)

#grafico salario
boxplot(dados$salario, main ="salario")

#relaçao entre Grau de instruçao e regiao de procedencia
cor(as.numeric(dados$Instrucao),as.numeric(dados$procedencia))
#proximo de 0  relaçao fraca

plot(dados$salario, dados$idade, main="Dispersao entre Salario e Idade", xlab="Salario", ylab="Idade", pch=19)
lines(lowess(dados$salario,dados$idade), col="red")

boxplot(dados$salario, as.numeric(table(dados$Instrucao)),  main=" relaçao entre Salario e Grau de Instrução")

