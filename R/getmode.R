#' Find the Mode of a Vector
#'
#' This function allows you to quickly find the Mode of a vector
#' @keywords to_under
#' @param v Vector for which you want to calculate the mode
#' @export
#' @examples
#' v <- c(1,2,3,3,3,3,4,5)
#' getmode(v)

getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
