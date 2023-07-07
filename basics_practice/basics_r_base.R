## R base
getwd()

# installing packages: use RStudio

# variable assignment
x <- 5.3 # use <-
class(x)
y = 3
x^2

a <- "word combination"
class(a)
##a^2

# vectors
vx <- c(2.5, 7, 3.8)
class(vx)
length(vx)
vx[2]
vx[5]

# character vector
vc <- c("yes", "no", "no", "yes", "yes")
vc[2]
vc[2:4]
# modify value in a vector
vc[2] <- "yes"

vf <- as.factor(vc)
class(vf)
vf[2]
levels(vf)

vc2 <- vc
vc2[6] <- "maybe"
vc2[7] <- "not really"
vc2
factor(vc2)
vlevels <- levels(factor(vc2))
vlevels

vl <- (vc2 == "yes")
vl
class(vl)


# conditional
n <- 10
if (n <= length(vc2)) {
  q <- vc2[n]
} else {
  q <- vc2[length(vc2)]
}

m <- 3
if (m <= length(vc2)) {
  qq <- vc2[m]
} else {
  qq <- vc2[length(vc2)]
}

# DRY: Don't Repeat Yourself

fselect <- function(v, n) {
  if (n <= length(v)) {
    q <- v[n]
  } else {
    q <- v[length(v)]
  }
  return(q)
}

fselect(vc2, 10)
fselect(vc2, 3)
fselect(v=vc2, n=3)

