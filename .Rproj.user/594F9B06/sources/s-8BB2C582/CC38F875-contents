#' Convert "Heisei" to Jurian years (Seireki).
#'
#' @param integer_vector Integer vector with minimum value 1.

heisei_to_seireki <- function(integer_vector){
  .check(any(integer_vector <= 0), "Inputted integer vector contains value <= 0")

  return(integer_vector - 12 + 2000)
}
