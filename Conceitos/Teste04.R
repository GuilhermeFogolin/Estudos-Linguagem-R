# Teste 04

# Questão 01

cadastro <- matrix( c(NA, NA, NA, NA), nrow = 3, ncol = 4, dimnames = list(NULL, c("Nome", "Idade", "Cidade", "Telefone")))

cadastro[1,] <- c("Maria das Dores", 56, "São Paulo",3025-111)
cadastro[2,] <- c("José Aníbal", 40, "Santos",3333-0120)
cadastro[3,] <- c("Pedro Silva", 23, 3091-777, "São Paulo")


cadastro[, 2:4]
cadastro[1:3, 2]
as.numeric(cadastro[1:3, 2]) * 4