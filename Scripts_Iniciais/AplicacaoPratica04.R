# Aplicação prática 04

# Questão 01

clientes <- c("Marcos de Aguiar", "Paula Miranda", "Emilio Santos", "Pryscilla de Albuquerque")
salario <- c(4000, 2500, 1200, 3400)
idade <- c(44, 56, 76, 40)

dados <- cbind(clientes, salario, idade)

# Questão 02

dados[2,2] <- c(5500.33)

# Questão 03

dados[,2] <- as.numeric(dados[,2]) * 0.7

# Questão 04

dados[,2] <- mean(as.numeric(dados[,2]))

# Questão 05

nomesColunas <- c("Clientes", "Salário", "Idade")
colnames(dados, do.NULL = TRUE, prefix = "col")
colnames(dados) <- nomesColunas