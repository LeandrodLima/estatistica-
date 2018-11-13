dados<- scan("vendas.dat",what=list(telhados=0, gastos=0, clientes=0, marcas=0, potencial=0))
attach(dados)# anexa conjunto de dados de modo a chamar as vari´aveis diretamente

#a

plot(telhados~gastos,pch =19)
plot(telhados~clientes,pch =19)
plot(telhados~marcas,pch =19)
plot(telhados~potencial,pch =19)

#telhaodos-gastos
correçaoLinear1 <-cor(telhados,gastos)
ajuste <- lm(telhados~gastos)
summary(ajuste)
#telhados-clintes
correçaoLinear2 <-cor(telhados,clientes)
ajuste <- lm(telhados~clientes)
summary(ajuste)
#telhados-marcas
correçaoLinear3 <-cor(telhados,marcas)
ajuste <- lm(telhados~marcas)
summary(ajuste)
#telhados-potencial
correçaoLinear4 <-cor(telhados,potencial)
ajuste <- lm(telhados~potencial)
summary(ajuste)

correçaoLinear2 <-cor(telhados,clientes)
correçaoLinear3 <-cor(telhados,marcas)
correçaoLinear4 <-cor(telhados,potencial)
#par(, main="Dispersao entre Salario e Idade", pch=19)

# pelo F-teste onde o maior F é entre telhados-marcas, tambem teve maiora maior correçao libear e melhor grafico
#entao é o modelo que mais se ajustou aos dados


