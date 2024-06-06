set.seed(2126)
n <- 4
r <- 150
m <- 130
proportions <- numeric(r)
counter <- 0

for (i in 1:r) {
  for (j in 1:m) {
    Z <- rnorm(n + 1)
    sum_Z_squared <- sum(Z[2:(n + 1)]^2)
    T <- (sqrt(n) * Z[1]) / sqrt(sum_Z_squared)
    if (T <= -0.9) counter <- counter + 1
  }
  proportions[i] <- counter / m
  counter <- 0
}

# Média das proporções
mean_proportion <- mean(proportions)

# Probabilidade teórica usando distribuição t-Student com n graus de liberdade
prob_teorica <- pt(-0.9, n)

# Cálculo da diferença absoluta multiplicada por 100
diff <- abs(mean_proportion - prob_teorica) * 100
diff
print(round(diff, 5))
