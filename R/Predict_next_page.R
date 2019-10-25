#' Take some pageviews, output Markov model prediction
#'
#' @param current_URL A character vector of pageview names
#'
#' @return The prediction
#' @import clickstream
#' @export
PredictNextPage <- function (current_URL){
  startPattern <- new("Pattern", current_URL)
  out <- try(predict(model, startPattern), silent = TRUE)
  if(inherits(out,"try_error")){
    out <- "None"
  }
  out
}


toJSON(PredictNextPage("home"))


?new()
