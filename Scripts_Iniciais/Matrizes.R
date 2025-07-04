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