# Git intro 
# Allen Lab meeting
# 2017 Aug 1
# Simulation functions


# This script contains functions for generating covariates and slopes, and 
# simulating simple population dynamics in a gridded landscape

initialize_sim <- function(grid_rows=5,  # number of rows in landscape
                           grid_cols=5,  # number of columns in landscape
                           nCov=2) {      # number of covariates
  
  # generate covariates
  X <- matrix(runif(grid_rows*grid_cols*nCov, -2, 2), ncol=nCov,
              dimnames=list(1:(grid_rows*grid_cols), c("Temp", "Precip")))
  # generate slopes
  b <- runif(nCov, -0.5, 0.5)
  # set intercept
  a <- 1
  
  # generate initial lambdas
  r <- X %*% b + a
  
  # generate carrying capacities based on land cover types
  LC <- sample(1:4, grid_rows*grid_cols, replace=TRUE)
  K <- c(50, 100, 150, 200)[LC]
  
  # return all
  return(list(X=X, b=b, a=a, r=r, K=K, LC=LC))
}




popGrowth_sim <- function(r,         # per-cell intrinsic growth rate
                          K=500,     # carrying capacity
                          tmax=20) { # number of time steps
  N <- matrix(ncol=length(r), nrow=(tmax))
  N[1,] <- K/2
  for(i in 2:tmax) {
    r.t <- rnorm(length(r), r*(1-N[i-1,]/K), 0.1)
    N[i,] <- N[i-1,] * exp(r.t)
  }
  return(N)
}
  
  
  
  
  