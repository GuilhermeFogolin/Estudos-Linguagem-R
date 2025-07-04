# Fatores

install.packages("forcats")

# Criação

genero <- c("2", "1", "2", "2", "1", "3")
str(genero)

generoFator <- as.factor(genero) # Criando o fator
str(generoFator)

a <- factor(c("2", "1", "2", "2", "1", "3")) # Criando diretamente
str(a)