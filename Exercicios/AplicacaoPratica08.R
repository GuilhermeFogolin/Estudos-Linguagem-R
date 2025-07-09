# Aplicação prática 08

# Questão 01

total <- rbind(desempenho[ , ,1], desempenho[, , 2], desempenho[ , ,3])

total <- as.data.frame(A)

# Questão 02

rownames(total) <- seq(1:nrow(total))

# Questão 03

str(total$Salário)
str(total$Idade)
str(total$`Valor Solicitado`)

total$Salário <- as.numeric(total$Salário)
total$Idade <- as.numeric(total$Idade)
total$`Valor Solicitado` <- as.numeric(total$`Valor Solicitado`)

# Questão 04

# A

funcionario <- gl(3, 4, labels = c("Jorge A.", "Kauan S.", "Maria S."))

# B

total$funcionario<-funcionario

# C

total[funcionario == "Jorge A.", ]
total[funcionario == "Kauan S.", ]
total[funcionario == "Maria S.", ]

# Questão 05

# A

table(total$Motivo)

# B

pie(table(total$Motivo))

# C

barplot(table(total$Motivo))