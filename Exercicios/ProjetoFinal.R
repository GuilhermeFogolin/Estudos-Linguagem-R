# Projeto final

# Cadastrar alunos, incluir notas, aprovados e reprovados e média

escola <- function(g) {
  
  # Definindo variáveis
  
  Nomes <- as.character() # Vetor alfanumérico
  Prova_01 <- as.numeric() # Vetor numérico
  Prova_02 <- as.numeric()
  Prova_03 <- as.numeric()
  Média_Escolar <- as.numeric()
  Situação <- as.character()
  
  alunos <- data.frame(Nomes, Prova_01, Prova_02, Prova_03, Média_Escolar, Situação) # Criando df
  str(alunos)
  
  # Impressão inicial
  
  print("Esta função realiza as seguintes atividades: ")
  print("1 - Cadastro de alunos")
  print("2 - Receber notas")
  print("3 - Mostrar média e situação")
  
  # Entrada de dados
  
  print("Cadastro de alunos --> Digite 1")
  x <- scan(n = 1) # Aceitar apenas um número
  i <- 1
  
  while(x == 1) {
    
    print("Nomes: ")
    nome <- scan(what = character(), nmax = 1) # Apenas uma entrada alfanumérica
    
    print("Nota 1: ")
    Prova_01 <- scan(n = 1)
    
    print("Nota 2: ")
    Prova_02 <- scan(n = 1)
    
    print("Nota 3: ")
    Prova_03 <- scan(n = 1)
    
    notas <- c(Prova_01, Prova_02, Prova_03) # Vetor
    
    for(j in 1:length(notas)) {
      cat("Nota na prova", j, ":")
      cat("", notas[j], "\n")
    }
    
    Média_Escolar <- mean(notas)
    cat("Média do aluno:", Média_Escolar, "\n")
    
    if(Média_Escolar >= 7) {
      print("Aluno aprovado! Parabéns.")
      Situação <- "Aprovado"
    } else {
      print("Aluno reprovado! Pague o exame!")
      Situação <- "Reprovado"
    }
    
    alunos[i, ] <- c(nome, Prova_01, Prova_02, Prova_03, Média_Escolar, Situação)
    
    print("Cadastrar outro aluno? Sim(1) ou Não(0)")
    x <- scan(n = 1)
    
    i <- i + 1
    
  }
  
  print("Obrigado! =D")
  print("=== Resumo das informações ===")
  return(alunos) # Retornando o dataframe
  
}

escola(1) # Chamando a função com qualquer argumento!
