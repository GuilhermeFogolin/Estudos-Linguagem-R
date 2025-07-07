# Aplicação prática 07

# Questão 01

nomes_clientes <- as.vector(desempenho[,1,]) # Nomes dos clientes

salarios_clientes <- as.vector(desempenho[,2,]) # Salários dos clientes

idades<-as.vector(desempenho[,3,]) # Idades dos clientes

Fogolin <-
list(Nome = nomes_dos_clientes[1], Salário = salarios_clientes[1], Cartão = historico_cartao = c(334,356,544), Idade = idades[1])

Maria<-
list(Nome = nomes_dos_clientes[2], Salário = salarios_clientes[2], Cartão = historico_cartao = c(230,280,399), Idade = idades[2])

Carol<-
list(Nome = nomes_dos_clientes[3], Salário = salarios_clientes[3], Cartão = historico_cartao = c(120,255,270), Idade=idades[3])

# Questão 02

mean(Fogolin[[3]])

mean(Maria[[3]])

mean(Carol[[3]])