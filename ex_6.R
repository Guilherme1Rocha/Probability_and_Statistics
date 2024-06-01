set.seed(1948)
samples <- 1000
n <- 30
y <- 1/4
shape <- 30
scale <- 4
Y_values = array(data = NA,dim = samples)
counter = 0
for (i in 1:samples){
  for (j in 1:n){
    X_values = rexp(n, rate = y)
  }
  Y_values[i] = sum(X_values)
  if (Y_values[i] > 90) counter = counter + 1
}

Y_1 <- counter/samples
Y_2 <- 1 - pgamma(90, shape = shape, scale = scale)

print(abs(Y_1-Y_2))
