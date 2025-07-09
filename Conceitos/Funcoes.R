# Funções

# Operadores lógicos

resumoFinal$qtde_Jan[2] == 100 # Igualdade

resumoFinal$fornecedores[3] == "K"

sum(resumoFinal$qtde_Jan[2]) == 23 # Sum e igualdade

resumoFinal$qtde_Jan[1] != 89 # Diferença

resumoFinal$qtde_Jan[2] > 30 # Maior

resumoFinal$qtde_Jan[1] < 34 # Menor

# Operadores em conjuntos (AND e OR)

(resumoFinal$qtde_Jan[1] > 50) & (resumoFinal$qtde_Jan[1] < 55)

(resumoFinal$qtde_Jan[1] > 50) | (resumoFinal$qtde_Jan[1] < 0)

# Loop for

for(i in 1:nrow(resumoFinal)) {
  cat("Você pediu", resumoFinal$qtde_Jan[i], "unidades ao fornecedor",
      resumoFinal$fornecedores[i], ". Pedido confirmado! \n")
}

# Loop while

i <- 1 # Começa em 1

while(i <= nrow(resumoFinal)) {
  cat("Você pediu", resumoFinal$qtde_Jan[i], "unidades ao fornecedor",
      resumoFinal$fornecedores[i], ". Pedido confirmado! \n")
  i <- i + 1
}

# Exemplo 02 com while

j <- 0

while(j == 0) {
  print("Continuar pedido? Sim(0) Não(1)")
  j <- scan()
}

# IF / ELSE

resumoFinal$capacidade <- c(400, 768, 900, 1200, 80)

i <- 1

if(resumoFinal$qtde_Abr[i] <= resumoFinal$capacidade[i]) {
  print("Pedido dentro das capacidades! Aceito.")
} else {
  cat("Quantidade acima do estoque de ", resumoFinal$fornecedores[i], ". Pedido recusado.")
}

# IF / ELSE + for()

for(i in 1:nrow(resumoFinal)) {
  
  if(resumoFinal$qtde_Abr[i] <= resumoFinal$capacidade[i]) {
    print("Dentro das capacidades! Pedido confirmado.")
  } else {
      cat("Atenção! O seu pedido de", resumoFinal$qtde_Abr[i], "supera o limite de", resumoFinal$capacidade[i], "unidades! Pedido negado.\n")
  }
}

# Criação

# 1 - Cadastrar pedidos
# 2 - Comparar pedidos de acordo com o estoque

tabelaFornecedor <- resumoFinal[, c(1, 6)]
tabelaFornecedor$Preço <- c(134, 567, 888, 98, 90)

novosPedidos <- function(nome, tabelaFornecedor) {
  
  pedidos <- c() # Criando um vetor
  k <- 0 # Inicializando k
    
  while(k == 0) {
    
    print("----- Novo pedido -----\n")
    cat("Temos", nrow(tabelaFornecedor), "fornecedores cadastrados!\n" )
    
    for(i in 1:nrow(tabelaFornecedor)) {
      cat("Quantas unidades você deseja pedir a", tabelaFornecedor$fornecedores[i], "?\n")
      pedidos[i] <- scan(n = 1) # Apenas um número digitado! Faz o cadastro dos pedidos.
      
      # Aprovando ou não o pedido
      
      if(pedidos[i] <= tabelaFornecedor$capacidade[i]) {
        print("Pedido confirmado! Enviado ao fornecedor.\n")
      } else {
          if(pedidos[i] < 0.1 * tabelaFornecedor$capacidade[i]) { # Abaixo de 10%
          cat("Pedido muito baixo! Ele ser maior que", 0.1 * tabelaFornecedor$capacidade[i], "unidades!\n")
          }  
        
          if(pedidos[i] > tabelaFornecedor$capacidade[i]) { # Acima da capacidade
          cat("Pedido acima do estoque! Ele ser menor que", tabelaFornecedor$capacidade[i], "unidades!\n")
          }  
        }
    } # for
    
    print("----- Revisão do pedido -----\n")
    tabelaFornecedor$Pedidos <- pedidos
    print(tabelaFornecedor)
    
    print("------ Digite 0(Continuar) ou 1(Finalizar)")
    k <- scan(n = 1)
    
    } # while
  
  return(tabelaFornecedor)
}

novosPedidos(nome = "Fogolin", tabelaFornecedor = tabelaFornecedor)