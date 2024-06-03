set.seed(4588)

# Definir parâmetros
n <- 100
m <- 5000
lambda_0 <- 2.40
lambda_1 <- 2.65
k <- 2.623

# Função para calcular a frequência relativa de cada tipo de erro
calcular_frequencia_erro <- function(media_amostral, k) {
  if (media_amostral > k) {
    return("Erro do Tipo I")
  } else {
    return("Erro do Tipo II")
  }
}

# Simular m pares de amostras de Poisson sob H0 e H1
frequencias_erros <- replicate(m, {
  # Amostras sob H0 e H1
  amostra_H0 <- rpois(n, lambda_0)
  amostra_H1 <- rpois(n, lambda_1)
  
  # Calcular médias amostrais
  media_H0 <- mean(amostra_H0)
  media_H1 <- mean(amostra_H1)
  
  # Calcular frequências relativas de erros
  frequencia_H0 <- calcular_frequencia_erro(media_H0, k)
  frequencia_H1 <- calcular_frequencia_erro(media_H1, k)
  
  c(frequencia_H0, frequencia_H1)
})

# Calcular as frequências relativas
frequencia_relativa_tipo_I <- sum(frequencias_erros[1,] == "Erro do Tipo I") / m
frequencia_relativa_tipo_II <- sum(frequencias_erros[2,] == "Erro do Tipo II") / m

# Calcular a razão de chances
razao_chances <- frequencia_relativa_tipo_II / frequencia_relativa_tipo_I
print(razao_chances)