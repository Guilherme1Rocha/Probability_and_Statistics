library(stats4)
x <- c(8.54, 4.76, 5.15, 4.96, 6.25, 7.22, 12.9, 6.04, 8.86, 4.88, 6.54, 4.53, 4.7, 5.38, 5.96, 5.17, 5.09, 5.11)
a <- 4.5
n <- length(data)
p <- 0.25
logLike <- function(theta){
  (theta * (x)^(-theta-1) * a^theta)
}

estimation <- mle(logLike, start = list(theta = 3.4))
theta_hat <- coef(estimation)

estimation_1 <- ((3.4*a^3.4)/p)^(1/(3.4+1))
estimation_2 <- ((theta_hat*a^theta_hat)/p)^(1/(theta_hat+1))

print(abs(estimation_1-estimation_2))

