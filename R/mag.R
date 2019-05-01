#' Calculate Magnitude of Vector
#'
#' This function allows you to quickly calculate the magnitude of a vector.
#' @keywords magnitude
#' @export
#' @examples
#' x <- c(3,5,6)
#' mag(x)

mag <- function(x){sqrt(sum(x^2))}
