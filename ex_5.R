set.seed(2126)
n <- 4
r <- 150
m <- 130
proportions <- array(data = NA,dim = r)
sum <- 0
counter <-0
for (i in 1:r){
  for (j in 1:m){
      Z = rnorm(n+1)
      for (l in 1:n+1){
        sum <- sum + Z[l]^2
        print(l)
      }
      T <- (sqrt(n) * Z[1]) / sqrt(sum)
      if (T <= -0.9) counter = counter + 1
  }
  proportions[i] = counter/m
  sum <- 0
  counter <- 0
}

print(round(abs((mean(proportions)-pt(-0.9,n)))*100,5))

