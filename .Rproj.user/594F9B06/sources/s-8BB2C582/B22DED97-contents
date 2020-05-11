#' Cheking function for generate errormessage if invalid value given to the function.
#'
#' This function is intended for internal use only
#'
#' @param expr An expression to evaluate
#' @param errormessage A message to displayed if expr is TRUE

.check <- function (expr, errormessage) {
  if (expr) stop(errormessage, call. = FALSE)
}

#' Warning function for generate warningmessage if warning message need to be printed
#'
#' This function is intended for internal use only.
#'
#' @param expr An exporession to evaluate
#' @param warningmessage A message to displayed if expr is TRUE
#' @import stringr

.warn <- function (expr, warningmessage) {
  if (expr) {
    print(str_c("WARNING!: ",warningmessage))
  }
}
