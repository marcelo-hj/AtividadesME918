library(purrr)
library(devtools)
library(usethis)

sim_dist = function(arg){
  res=c()
  distribution = arg$distribution
  n = as.integer(arg$obs)
  if(distribution=='poisson') {
    lambda=arg$lambda
    res=rpois(n=n,lambda=lambda)
  } 
  if(distribution=='normal') {
    mu=arg$mu
    sigma2=arg$sigma2
    res=rnorm(n=n, 
              mean=mu,
              sd=sqrt(sigma2)
              )
  }
  if(distribution=='bernoulli'){
    p=arg$p
    res=rbinom(n=n,size=1,prob=p)
  }
  return(res)
}
# sim_dist(list(distribution = "poisson", lambda = 2.0, obs = 20))
# list(distribution = "normal", mu = 1.2, sigma2 = 1.0, obs = 25)
# list(distribution = "bernoulli", p = 0.3, obs = 30)