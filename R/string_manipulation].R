#' Function for remove white spaces.
#'
#' @param character_vector Character vector to remove spaces
#' @param zenkaku Boolean. TRUE(default) to remove zenkaku and hankaku spaces.
#' @import stringr
#' @export

remove_spaces <- function(character_vector, zenkaku = TRUE){

  if(zenkaku){
    character_vector <- conv_zenkaku_space(character_vector)
  }

  return(str_remove_all(character_vector,"\\s"))
}

