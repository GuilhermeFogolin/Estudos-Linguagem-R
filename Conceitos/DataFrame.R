# Dataframe

# Criação

fornecedores <- c("A", "B", "Y", "G", "M")
qtde_Jan <- c(12, 54, 678, 33, 55)
qtde_Fev <- c(23, 78, 345, 88, 45)
qtde_Mar <- c(540, 23, 78, 23, 13)

resumo <- cbind(fornecedores, qtde_Jan, qtde_Fev, qtde_Mar)

resumo_df <- as.data.frame(resumo) # Matriz em data frame

# Criação simplificada

data.frame(fornecedores = c("A", "B", "Y", "G", "M"),
           qtde_Jan = c(12, 54, 678, 33, 55),
           qtde_Fev = c(23, 78, 345, 88, 45),
           qtde_Mar = c(540, 23, 78, 23, 13))

# Criação com vetores

data.frame(V1 = fornecedores, V2 = qtde_Jan)

# Acesso

resumo_df[2, ] # Linha 2

resumo_df[2:4, ] # Linhas 2, 3 e 4

resumo_df$qtde_Jan # Por variável = resumo_df[, 2]

# Modificação

resumoFinal <- data.frame(fornecedores, qtde_Jan, qtde_Fev, qtde_Mar)
str(resumoFinal)

resumoFinal$qtde_Jan <- as.character(resumoFinal$qtde_Jan) # Transformando em caractere

resumoFinal$qtde_Jan [5] <- "100" # Mudando um valor

resumoFinal$qtde_Mar[1:3] <- c(1, 2, 3) # Sequência de valores

resumoFinal$qtde_Fev[c(1, 3)] <- c(27, 28) # Valor aleatório