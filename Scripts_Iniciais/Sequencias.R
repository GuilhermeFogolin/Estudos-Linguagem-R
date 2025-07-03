# Sequências

# Criação com elementos

1:20 # Forma mais simples de 1 em 1
seq(1, 25, 2) # Começa em 1 e vai até 25 em passos de 2

# Criação com repetição

rep(3,4) # Repetir o número 3 4x
rep(1:5, 5) # Repetir sequência 5x
rep(produtos, 3) # Repetir vetor 3x
rep(produtos, 2, each = 3) # Repetir vetor 2x e cada elemento 3x

# Com amostras aleatórias (sorteio)

sample(1:30, 10) # Em um intervalo de 1:30 selecionar 10 valores
sample(1:30, replace = F) # Sorteio sem reposição

# Acessar, modificar, substituir

id_produtos <- 1000:1250
id_produtos[45]
id_produtos[c(32, 150)]
id_produtos[1] <- 9999