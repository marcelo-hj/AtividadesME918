source("executa.R")

for (i in seq_along(planos)) {
  filename = paste0("resultados/simulacao", i, ".RData")
  object_to_save = planos[[i]]
  names_object_to_save = names(object_to_save)
  for (obj_name in names_object_to_save) {
    assign(obj_name, object_to_save[[obj_name]])
  }
  save(list=names_object_to_save, file=filename)
}
