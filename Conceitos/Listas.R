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
balanço$Nomes[5] <- "Emanuel" # Adicionando um nome
balanço$Nomes[6:8] <- c("Lucas", "Rafael", "Miro") # Adicionando mais de um nome
balanço$Nomes <- balanço$Nomes[-1]  # Removendo um nome
rownames(balanço$Nomes) <- "Clientes"

# Combinação

informações <- list(Data = "12/10/2024", Gestor = "Leonardo", Mês_Referência = "Julho")

listaFinal <- c(balanço, informações)

names(listaFinal) # Nomes das variáveis

# Transformação em vetor

unlist(listaFinal) # Vetor
unlist(listaFinal)[6] # Acesso