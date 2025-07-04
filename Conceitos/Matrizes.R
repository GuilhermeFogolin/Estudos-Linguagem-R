# Matrizes

# Criação com vetores

# Ordem importa
vendas <- cbind(produtos, qtde) # Em colunas
vendas <- rbind(produtos, qtde) # Em linhas

# Criando com matrix()

matrix(1:20, nrow = 4, ncol = 5) # Matriz com 4 linhas, 5 colunas
matrix("Oi", nrow = 3, ncol = 3) # Matriz 3x3 somente com "Oi"
matrix(1:10, nrow = 5, ncol = 2, byrow = T) # Ajusta contagem por linhas

# Acessando

vendas[2,2] # Linha | Coluna
vendas[1,] # Toda a linha 1
vendas[,2] # Toda a coluna 2
vendas[2:4,] # Busca na linha 2 até 4 (com todas as colunas)
vendas[2:4, 1] # Busca na linha 2 até 4 (somente na coluna 1)

# Modificando

produtos <- c("TV", "Mouse", "Teclado", "Notebook")
qtde <- c(10, 12, 5, 23)

vendas <- cbind(produtos, qtde)

vendas_Jan <- vendas
vendas_Fev <- vendas_Jan
vendas_Fev[,2] <- as.numeric(vendas_Jan[, 2]) + 2 # Transformando em numérico e somando 2
vendas_Fev[1,1] <- c("Televisão") # Alterando um elemento
vendas_Fev[3,] <- c("Fone", 45) # Alterando uma linha
vendas_Fev[2:4, 2] <- c(10, 23, 65) # Alterando um intervalo de linhas
vendas_Fev[c(1, 4), 1] <- c("TV", "Computador") # Alterando linha 1 e 4
vendas_Fev[, -1] # Excluindo coluna 1
vendas_Fev[-2, ] # Excluindo linhas 2
vendas_Fev[-2, -2] # Excluindo linha e coluna

# Operações

fogolin <- c(10, 23, 45, 21, 10)
kauan <- c(12, 45, 78, 12, 3)
carol <- c(16, 19, 23, 65, 78)

vendasTotal <- cbind(fogolin, kauan, carol)

dim(vendasTotal) # Saber dimensões (linhas e colunas)
nrow(vendasTotal) # Número de linhas
dim(vendasTotal)[1] # Número de linhas
ncol(vendasTotal) # Número de colunas
dim(vendasTotal)[2] # Número de colunas

vendasTotal - 2 # Reduzindo 2 de todos os elementos
sum(vendasTotal[, 1]) # Somando uma coluna

A <- vendasTotal + 5
B <- vendasTotal
A + B # Soma de matrizes