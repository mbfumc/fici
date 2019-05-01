#' Convert Strings to Snake Case
#'
#' This function allows you to quickly convert strings to snake case
#' @keywords to_under
#' @param x variable to convert to snake_case
#' @export
#' @examples
#' x <- "Hello World"
#' to_under(x)

to_under <- function(x){
  x <- gsub(" ", "",x,perl=TRUE)
  s <- gsub("([a-z])([A-Z])", "\\1_\\L\\2", x, perl = TRUE)
  s1 <- tolower(substr(s,1,1))
  s2 <- substr(s,2,nchar(s))
  s <- tolower(paste0(s1,s2))
  s <- gsub(".", "_", gsub("..", "_", s,fixed=TRUE),fixed=TRUE)
  return(s)
}
