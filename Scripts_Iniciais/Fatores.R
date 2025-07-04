# Fatores

install.packages("forcats")

# Criação

genero <- c("2", "1", "2", "2", "1", "3")
str(genero)

generoFator <- as.factor(genero) # Criando o fator
str(generoFator)

a <- factor(c("2", "1", "2", "2", "1", "3")) # Criando diretamente
str(a)

# Acesso

generoFator[2] # Segunda posição

generoFator[1:3] # Intervalo

generoFator[length(generoFator)] # Última posição

# Modificação

generoFator[1] <- 3 # Alterando na posição 1