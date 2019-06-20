PredictNextPage <- function (current_URL){
  startPattern <- new("Pattern", current_URL)
  out <- try(predict(model, startPattern), silent = TRUE)
  if(inherits(out,"try_error")){
    out <- "None"
  }
  out
}


