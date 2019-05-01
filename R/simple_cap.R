#' Capitalize First Letter of Each Word in String
#'
#' This function allows you to quickly capitalize the first letter of each word in a string.
#' @keywords simple_cap
#' @param x String to capiltalize
#' @export
#' @examples
#' x <- "hello world"
#' simple_cap(x)
#'
simple_cap <- function(x) {
  s <- strsplit(x, " ")[[1]]
  paste(toupper(substring(s, 1,1)), substring(s, 2),
        sep="", collapse=" ")
}
