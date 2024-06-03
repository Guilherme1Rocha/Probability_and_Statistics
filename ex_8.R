library(pracma)
set.seed(1592)
n <- 12
possible_data <- c(31.8,31.7,35.2,37.1,31.7,36.1,36.3,33.2,34.3,37.5,30.4,34.6,32.4,31.7,30.2,34.3,35.6,34.9,38.9)

data <- sample(possible_data,n)
prob <- 0.96

a <- qchisq((1-prob)/2, df = n-1)
b <- qchisq((1+prob)/2, df = n-1)
s2 <- var(data)

IC_1 <- c((n-1)*s2 / b, (n-1)*s2 / a)

# Sistema de equações a resolver
equations <- function(x) {
  F_diff <- pchisq(x[2], df = n - 1) - pchisq(x[1], df = n - 1) - prob
  f_diff <- dchisq(x[2], df = n + 3) - dchisq(x[1], df = n + 3)
  return (c(F_diff,f_diff))
}

# Resolver o sistema de equações
result <- fsolve(equations, c(a,b))
c <- result$x[1]
d <- result$x[2]
IC_2 <- c(((n-1)*s2) / d, ((n-1)*s2) / c)
print(abs(diff(IC_1) -  diff(IC_2)))

