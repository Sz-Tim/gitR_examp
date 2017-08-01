# Git intro 
# Allen Lab meeting
# 2017 Aug 1
# Main script


# This script runs the simulation and plots the output
library(ggplot2); theme_set(theme_bw()); library(magrittr)
source("simData.R")

# Set parameters
grd.dim <- c(5, 5)
nCov <- 2
K <- 100
tmax <- 50

# Simulate
init <- initialize_sim(grd.dim, nCov)
N <- popGrowth_sim(init$r, init$K, tmax)

# Reshape output
N.df <- data.frame(N=c(N),
                   cell=1:prod(grd.dim) %>% rep(each=tmax), 
                   time=1:tmax %>% rep(prod(grd.dim)))
N.df[,(1:nCov)+3] <- init$X %>% rep(each=tmax)
names(N.df)[(1:nCov)+3] <- colnames(init$X)
N.df$LC <- init$LC %>% rep(each=tmax) %>% factor

# Visualize
ggplot(N.df, aes(x=time, y=N, group=cell, colour=Temp)) + 
  geom_line() + ylim(0,NA) + facet_wrap(~LC) +
  labs(x="Year", y="Population abundance") +
  scale_colour_gradient2(low="#313695", mid="#bdbdbd", high="#a50026")

ggplot(N.df, aes(x=time, y=N, group=cell, colour=Precip)) + 
  geom_line() + ylim(0,NA) + facet_wrap(~LC) + 
<<<<<<< HEAD
  labs(x="Year", y="Population abundance")+
=======
  labs(x="Year", y="Population abundance") +
>>>>>>> 2bf24417f85c63a92b3c7cf73c132351831c9a5d
  scale_colour_gradient2(low="#8c510a", mid="#bdbdbd", high="#01665e")
