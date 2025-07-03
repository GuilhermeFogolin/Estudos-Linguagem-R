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