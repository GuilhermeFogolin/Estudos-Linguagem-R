# Teste 02: Exercícios com vetores

prova1<-c(8,9,5,6,7,8,8,8,5)
prova2<-c(2,3,4,3,6,4,2,9,5)
prova3<-c(1,6,2,9,1,10,2,9,2)

prova1[prova1>7]
prova2[prova2==7]
prova3[c(2,4,6)]
length(prova2[prova2!=4])

# Exercício 04

provaA<-c(3,6,4,2,7,8,5,6)
provaB<-c(6,10,3,6,4,2,7,5)
provaC<-c(10,10,5,7,4,6,2,7)

sum(provaA, provaB, provaC)
100 * ((provaB - provaA) / provaA)
mean(provaA)
provaA < provaB