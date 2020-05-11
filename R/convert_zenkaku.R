#' Internal function for convert zenkaku to hankaku
#'
#' This function will be used with in functions of this package
#' Not intended to call by package user.
#' @import tibble

.definition_numeric <- function(){
  tribble(
    ~to, ~from,
    "0", "\uFF10",
    "1", "\uFF11",
    "2", "\uFF12",
    "3", "\uFF13",
    "4", "\uFF14",
    "5", "\uFF15",
    "6", "\uFF16",
    "7", "\uFF17",
    "8", "\uFF18",
    "9", "\uFF19"
  )
}


#' Internal function for applying str_replace_all to a single character.
#'
#' @param a_character Single character.
#' @param froms vector containing argument for pattern in str_replace_all.
#' @param tos vector containing argument for replace in str_replace_all.
#' @import purrr
#' @import stringr

.repeat_str_replace_all <- function(a_character, froms, tos){
  reduce2(froms, tos, .init = a_character, ~{
    return(str_replace_all(..1, ..2, ..3))
  })
}


#' Function for apply multiply str_reoplace_all condition to character vector
#'
#' This is wrapper for str_replace_all to apply multiple condition to the character vector
#'
#' @param character_vector Vector of character.
#' @param froms Vector containing argument for pattern in str_replace_all
#' @param tos Vector containing argument for replace in str_replace_all
#' @import purrr
#' @export

str_replace_all_repeats <- function(character_vector, froms, tos){
  map_chr(character_vector, ~{
    .repeat_str_replace_all(a_character = ., froms = froms, tos = tos)
  })
}


#' Convert zenkaku number to hankaku number.
#'
#' This function convert zenkaku number to hankaku number within string vector.
#'
#' @param character_vector A character vector include zenkaku number character.
#' @import stringr
#' @export

zenkaku_to_hankaku_num <- function(character_vector){

  froms <- .definition_numeric()$from

  str_replace_all_repeats(character_vector = character_vector,
                          froms = .definition_numeric()$from,
                          tos   = .definition_numeric()$to )

}
