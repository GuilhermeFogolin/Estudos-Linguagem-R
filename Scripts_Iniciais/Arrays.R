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

# Combinação

total[,2,1] # Primeira matriz, segunda coluna
total[1,,2] # Segunda matriz, primeira linha
total[1,2,3] # Primeira linha, segunda coluna, terceira matriz

# Modificação

total[2, 2, 3] <- "Café" # Alteranso 2a linha, 2a coluna e 3a matriz
total[1, , 3] <- c(99, "Suco") # Alterando uma linha inteira
total[2:3, 2, 2] <- c("Banana", "Filtro") # Alterando intervalo de linhas
total[c(1, 3), 2, 2] <- c("Água", "Abacate") # Alterando elementos específicos

# Operações

sum(as.numeric(total[,1,])) # Somando 1a coluna das 3 matrizes
max(as.numeric(total[,1, 3])) # Número máximo

# Extra de operações

vendas_sem1 <- c(14, 34, 23)
vendas_sem2 <- vendas_sem1 * 2
vendas_sem3 <- vendas_sem2 + 21
vendas_sem4 <- vendas_sem1 * 3

nomesColunas <- c("Sem 1", "Sem 2", "Sem 3", "Sem 4")
nomesLinhas <- c("Fogolin", "Maria", "Pedro")
nomesMatrizes <- c("Janeiro", "Fevereiro", "Março")

vendasFinais <- array(c(vendas_sem1, vendas_sem2, vendas_sem3, vendas_sem4), dim = c(3, 4, 3), 
                      dimnames = list(nomesLinhas, nomesColunas, nomesMatrizes))

apply(vendasFinais, 2, sum) # Somando todas as colunas

apply(vendasFinais, 1, sum) # Somando todas as linhas

apply(vendasFinais, 2, mean) # Média das colunas