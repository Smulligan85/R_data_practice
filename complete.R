complete <- function(directory, id = 1:332) {
  counting <- function(pname) sum(complete.cases(read.csv(pname)))
  pnames <- list.files(directory, full.names=TRUE)[id]
  data.frame(id = id, nobs = unlist(lapply(pnames, counting)))
}