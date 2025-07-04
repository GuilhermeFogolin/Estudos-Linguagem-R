# Fatores

install.packages("forcats")

# Criação

genero <- c("2", "1", "2", "2", "1", "3", "2", "3", "3", "1", "1")
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

generoFator[1] <- 1 # Alterando na posição 1

# Operações

produtos_online <- factor(c("Creme", "Pente", "Pente", "Escova", "Creme", "Creme"))
produtos_presencial <- factor(c("Pente", "Pente", "Creme", "Escova", "Fio-dental"))

library(forcats)

vendas <- fct_c(produtos_online, produtos_presencial) # Combinando fatores

grafico <- lvls_revalue(generoFator, c("Masculino", "Feminino", "Outros")) # Alterando label

plot(grafico) # Plotando gráfico

grafico2 <- fct_recode(generoFator, Masculino = "1", Feminino = "2") # Alterando somente dois label
plot(grafico2)

# Agrupamento de níveis

como_soube <- factor(c("LinkedIn", "linkedin", "linkedIn", "insta", "ig", "Instagram"))

fct_collapse(como_soube, LinkedIn = c("LinkedIn", "linkedin", "linkedIn"),
             Instagram = c("insta", "ig", "Instagram"))

estadoCivil <- factor(c("Solteiro", "Solteira", "Casado", "União estável", "Casado", "Viúvo", "Viúvo", "Solteiro"))

fct_lump(estadoCivil, 2, other_level = "Outros") # Agrupamento por nível mais frequente com dois níveis

# Reordenando níveis

escolaridade <- factor(c("Superior", "Fundamental", "Fundamental", "Pós-graduado",
                         "Ensino médio", "Ensino médio", "Superior", "Fundamental incompleto"))

ordem <- fct_relevel(escolaridade, c("Fundamental incompleto", "Fundamental", "Ensino médio", "Superior", "Pós-graduado"))