source("simulador.R")
devtools::source_url("https://ime.unicamp.br/~ra137784/ME918/2023s2/lab01_ig.R")
planos <- input_lab01()
set.seed(Sys.getenv("RA"))
sim_dists_results = purrr::map(planos, sim_dist)

for (i in seq_along(sim_dists_results)) {
  planos[[i]]$results = sim_dists_results[[i]]
}
