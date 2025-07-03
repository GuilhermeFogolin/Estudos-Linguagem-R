# Vetores

# Criação

vendas <-c(12, 15, 9, 7)

meses <-c("JAN", "FEV", "MAR", "ABR")

vendasTotais <- scan()

# Acesso

vendas
meses
vendasTotais

vendas[1] # Por índice
vendas[c(1,3)] # Mais de uma posição
vendas[1:3] # Por intervalo

# Modificação

# Substituição

vendas[2] <- 13

vendas[c(1,4)] <- c(23, 34) # Mais de uma posição

vendas[2:4] <- c(23, 45, 77) # Por intervalo

# Remoção

vendas <- vendas[-4] # Removendo o último valor

# Inclusão

vendas[4] <- 70 # Incluindo um valor

vendas[5:7] <- c(30, 06, 25) # Incluindo valores em intervalo

# Operações

length(vendas) # Tamanho

vendas + 2 # Somando duas unidades em todo o vetor

log(vendas) # Logarítmo

mean(vendas) # Média

max(vendas) # Máximo

min (vendas) # Mínimo

sqrt(vendas) # Raiz quadrada

sort(vendas) # Ordenação crescente

sort(vendas, decreasing = T) # Ordenação decrescente

vendas <- vendas + vendas * 2 # Atualizando os valores
