set.seed(2126)
n <- 4
r <- 150
m <- 130
proportions <- array(data = NA,dim = m)
sum <- 0
counter <-0
for (i in 1:r){
  for (j in 1:m){
      Z = rnorm(n+1)
      for (l in 2:n+1) sum <- sum + Z[l]*Z[l]
      T <- (sqrt(n) * Z[1]) / sqrt(sum)
      if (T <= -0.9) counter = counter + 1
  }
  proportions[i] = counter/m
  sum <- 0
  counter <- 0
}

mean_proportions <- mean(proportions)
print(dt(-0.9,4))
print(pt(-0.9,4))
