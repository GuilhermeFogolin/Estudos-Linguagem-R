# Teste 09

megasena <- function(njogos) { # Cria a função com nome de megasena
  
  numeros <- matrix(NA, 6, njogos) # Cria o arquivo que recebe os jogos
  for(i in 1:njogos){
    numeros[, i] <- sample(1:60, 6)
  }
  return(numeros)
}

megasena(3)