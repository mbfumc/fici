#' Convert Variable to Number
#'
#' This function allows you to quickly convert both strings and factors to numeric
#' @keywords mn
#' @param x variable to convert to number
#' @export
#' @examples
#' x <- "5"
#' mn(x)

mn <- function(x){as.numeric(as.character(x))}
