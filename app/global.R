library(shiny)
library(intrval)

n <- 10^3
x <- round(runif(n, -2, 2), 2)
y <- round(runif(n, -2, 2), 2)
d <- round(sqrt(x^2 + y^2), 2)
