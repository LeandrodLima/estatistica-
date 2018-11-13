#dica "ctrl + enter" executa a linha do arquivo
#plotando grafico
Data <- rnorm(1000, mean = 0, sd = 1) # Gerando 100 obs se uma vari ́avel com distribui ̧c~ao
# normal padr~ao e chamando-a de "Data"
hist(Data) # Histograma

#--------------aula 1 ---------------

z = 1:5 #sequencia de 1 ate 5 interador de 1 a 1

a <- seq(5,100,5) # (inicio,fim,interador)
a #para visualizar

b <- rep(2,10) #repitidor (variavel, quantidade de repetiçoes)
b
b <- rep("ha", 10)
b

c1 <- c(100, 34, 24, 56) #funçao c()
c1
c2 <- c(32, 9, 10, 888)
c2 
c <- cbind (c1,c2 ) #cbind  faz uma matriz (combinando vetores por coluna)
c  
d <- rbind(c1,c2)  #rbind  faz uma matriz (combinando vetores por Linha)
d

e1 <- c(1:3, 8) 
e2 <- c(1:5, 2)
e <- rbind(e1,e2) #erro depois do 8 ele começa a repitir com menor dimensao pra completar a matriz
e

f1 <- matrix(c(1:3, 8),2) #cria uma matriz 2x2  seguindo a sequencia por coluna
f1
f2 <- matrix(c(1:3, 8),2, byrow = T) #cria uma matriz 2x2  seguindo a sequencia por Linha
f2

I1 <- matrix(c(0, 1, 2, 5), 2) # Matriz Q 1x3
I1

I<- I1/I1 # Dividindo a matriz Q por ela mesma elemento a elemento:
I
# Como 0/0 ´e indeterminado, o R retorna "NaN", que indica "not a number".

# Multiplica¸c~ao de Matrizes: A%*%B
A <- matrix(c(1,2,0,4),2)
B <- matrix(c(2,4,1,5),2)
C<- A%*%B
C
# Produto de Kronecker:
A%x%B
# Transposta:
t(A)
# Inversa:
solve(B)
# Determinante:
det(B)

# Logaritmo natural:
log(10)
log10(10) #log na base 10
# Logaritmo em qualquer base:
log(10, 2) # base 2

# Funçao exponencial:
exp(2)

# Seno:
sin(10)
# Cosseno:
cos(15)
# Tangente:
tan(14)

# Raiz Quadrada:
sqrt(16)
16^(1/2)
# Raiz Cubica:
64^(1/3)
## [1] 4

#vetor 
v <- c(2, 5, 10, 11, 3)
#max valor
max(v)
#min valor
min(v)
#tamanho do vetor
length(v)
# Dimens~ao de uma matrix:
dim(A)
# Soma dos elementos:
sum(v)
# Soma acumulada:
cumsum(v)
# Produto dos elementos:
prod(v)

# Produto acumulado:
cumprod(v)

# Media:
mean(v)
# Variancia
var(v)
# desvio padrao
sd(v)
# Mediana:
median(v)

# EstatısticasDescritivas:
summary(v)

# Ordenaçao do vetor
sort(v)
# Ordenaçao do vetor decrescente
sort(v, decreasing = T)

order(v)

#opeçaoes 
# (>,>= ,==,!=,<=, <) a(maior, maior igual, igual, diferente, menor igual ,menor)b

# "e" & 
#"ou" |

#if else e ifelse

if(2 > 3){"verdade!"} else{"mentira!"}

if(2 < 3){"verdade!"} else{"mentira!"}

ifelse(2 > 3, "verdade!", "mentira!") # (condiçao,if,else)

#acessando elementos da matriz

A <- matrix(c(1, 1, 1, 2, 4, 20),3)
A

# Para acessar o elemento (2,1):
A[2,1]
# Para acessar o elemento (2,2):
A[2,2]
# Para acessar toda a coluna 1:
A[,1]
# Para acessar toda a linha 3:
A[3,]
# Para acessar os elementos das linhas 2 a 3 e da coluna 2:
A[2:3, 2]
# Para acessar todos os elementos da matriz A que s~ao maiores que 3:
A[A > 3]

a <- c(177, 180, 165, 250)
a
# Acessando o segundo elemento do vetor
a[2]
# Acessando os elementos 2 a 4:
a[2:4]
# Acessando os elementos 1 e 3:
a[c(1, 3)]
# Acessando todos os elementos maiores que 175:
a[a > 175]