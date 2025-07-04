# Arrays

# Criação

array(elementos, dimensoes, nomeDimensoes)

# Criação com matrizes

matriz <- matrix(1:20, 4, 5)

array(matriz, dim = c(4, 5, 2)) # Dados, linhas, colunas e quantas matrizes

array(0, dim = c(3, 3, 3)) # Três arrays preenchidos com zero

array(c("Mouse", "Teclado", "Fone"), dim = c(2, 3, 2))

# Criação com vetores

vendas <- c(12, 34, 56)
produtos <- c("Macarrão", "Feijão", "Arroz")

array(c(vendas, produtos), dim = c(3, 2, 2))

nomesVariaveis <- c("Quantidade", "Produto")
nomesMatrizes <- c("Janeiro", "Fevereiro", "Março")
nomesLinhas <- c("Fogolin", "Maria", "Pedro")
total <- array(c(vendas, produtos), dim = c(3, 2, 3), dimnames = list(nomesLinhas, nomesVariaveis, nomesMatrizes)) # Adicionando nomes

# Acesso por dimensão

dim(total)

total[1, 2, 3] # Linha 1, coluna 2, 3a matriz
total[,,2] # Segunda matriz
total[,2,] # Coluna 2 de cada matriz
total[1,,] # Linha 1 de cada tabela