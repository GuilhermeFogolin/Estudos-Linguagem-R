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