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

# Nomeando elementos

# Criando lista já com nomes

balanço2 <- list(ID = idCliente, Nomes = clientes, Quantidades = qtde, Cliente_Novo = novoCliente)

# Nomeando depois de criado

names(balanço) <- c("ID", "Nomes", "Quantidades", "Cliente Novo?")

# Acesso

# Pelo nome

balanço$Nomes
balanço$ID

balanço$Nomes[2] # Acessando o 2o elemento do vetor

balanço$Nomes[2:4] # Intervalo

balanço[[1]] # Pela posição dos objetos

# Modificação

balanço$Nomes[3] <- "Fogolin" # Mudando um nome
balanço$Nomes[c(1, 2)] <- c("Regiane", "Danyel") # Dois nomes