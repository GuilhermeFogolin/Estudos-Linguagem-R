# Listas

# Criação

# A partir de objetos

clientes <- c("Rejane", "Daniel", "Roberto", "Silvio")
qtde <- c(12, 45, 23, 45)
idCliente <- seq(101, 104)
novoCliente <- c(TRUE, FALSE, FALSE, TRUE)

balanço <- list(idCliente, clientes, qtde, novoCliente)

# Com o comando list

list(id = seq(101, 104), nomes = c("Fogolin", "Carlos", "José", "Amaro"), qtde = c(12, 2, 5, 8))