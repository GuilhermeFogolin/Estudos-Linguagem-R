# Arrays

# Criação

array(elementos, dimensoes, nomeDimensoes)

# Criação com matrizes

matriz <- matrix(1:20, 4, 5)

array(matriz, dim = c(4, 5, 2)) # Dados, linhas, colunas e quantas matrizes

array(0, dim = c(3, 3, 3)) # Três arrays preenchidos com zero

array(c("Mouse", "Teclado", "Fone"), dim = c(2, 3, 2))