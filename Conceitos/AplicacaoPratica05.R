# Aplicação prática 05

# Questão 01

dados <- array(0, dim = c(4, 5, 3))

# Questão 02

funcionarios <- c("Melissa M.", "Carlos P.", "Luciana T.")
clientes <- c("Cliente 1", "Cliente 2", "Cliente 3", "Cliente 4")
infos <- c("Nome", "Salário", "Idade", "Motivo", "Valor")

dados <- array(0, dim = c(4, 5, 3), dimnames = list(clientes, infos, funcionarios))

# Questão 3

funcionario1 <- cbind(Nome=c("Marcos","Paulo","João","Kamila"),
                    Salario=c(4000,3000,4500,2300),
                    Idade=c(45,33,36,45),
                    Motivo=c("Compra de Carro","Reforma da Casa","Viagem","Compra de Casa"),
                    Valor.Pedido=c(45000,34000,20000,120000))

funcionario2 <- cbind(Nome=c("Marcela","Fábio","Luana","Romero"),
                    Salario=c(3200,4500,2500,1300),
                    Idade=c(34,30,56,54),
                    Motivo=c("Compra de Carro","Viagem","Viagem","Compra de Carro"),
                    Valor.Pedido=c(75000,55000,19000,90000))

funcionario3 <- cbind(Nome=c("Gustavo","Bruno","Joana","Vânia"),
                    Salario=c(11000,5600,1580,6300),
                    Idade=c(56,29,44,57),
                    Motivo=c("Compra de Casa","Viagem","Compra de Apartamento","Reforma da Casa"),
                    Valor.Pedido=c(55000,8000,21000,7000))

dados[,,1] <- funcionario1
dados[,,2] <- funcionario2
dados[,,3] <- funcionario3

# Questão 4

sumMel <- sum(as.numeric(dados[,5,1]))
sumCa <- sum(as.numeric(dados[,5,2]))
sumLu <- sum(as.numeric(dados[,5,3]))

emprestimoTotal <- c(sumMel, sumCa, sumLu)
max(emprestimoTotal)