# Matrizes

# Criação com vetores

# Ordem importa
vendas <- cbind(produtos, qtde) # Em colunas
vendas <- rbind(produtos, qtde) # Em linhas

# Criando com matrix()

matrix(1:20, nrow = 4, ncol = 5) # Matriz com 4 linhas, 5 colunas
matrix("Oi", nrow = 3, ncol = 3) # Matriz 3x3 somente com "Oi"
matrix(1:10, nrow = 5, ncol = 2, byrow = T) # Ajusta contagem por linhas