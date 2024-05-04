set.seed(2255)
simular_sistema <- function() {
  aviso_sonoro <- FALSE
  sistema_desligado <- FALSE
  
  for (i in 1:9) {
    sinal_emitido <- sample(1:10, 1, prob = 1:10/55)
    if (sinal_emitido == 2) {
      aviso_sonoro <- TRUE
    }
    if (sinal_emitido == 1) {
      sistema_desligado <- TRUE
    }
  }
  return(list(aviso_sonoro = aviso_sonoro, sistema_desligado = sistema_desligado))
}
num_aviso_sonoro <- 0
num_sistema_nao_desligado <- 0
for (j in 1:150) {
  resultado <- simular_sistema()
  if (resultado$aviso_sonoro && !resultado$sistema_desligado) {
    num_aviso_sonoro <- num_aviso_sonoro + 1
  }
  if (!resultado$sistema_desligado) {
    num_sistema_nao_desligado <- num_sistema_nao_desligado + 1
  }
}

# Calcular proporção de vezes em que é produzido um aviso sonoro num sistema que não é desligado
proporcao <- num_aviso_sonoro / num_sistema_nao_desligado
#proporcao <- round(proporcao, 2)
print(proporcao)