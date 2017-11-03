rm(list=ls(all=TRUE))
sigmoid <- function(x) {
  sig <- 1 / (exp(-x)+1)
}

hardsign <- function(x) {
  hard <- ifelse(x<0,-1,1)
}

softsign <- function(x) {
  sig <- x / (abs(x)+1)
}

relu <- function(x) {
  r <- ifelse(x<0, 0, x)
}

satlins <- function(x) {
  a <- ifelse(x<(-1), -1, ifelse(x>1, 1, x))
}

x = (-4000:4000)/1000

plot(x,sigmoid(x),type='l')
plot(x,hardsign(x),type='l')
plot(x,softsign(x),type='l')
plot(x,relu(x),type='l')
plot(x,tanh(x),type='l')
plot(x,satlins(x),type='l')
