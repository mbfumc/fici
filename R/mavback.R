#' Backwards moving average
#'
#' This function allows you to compute the moving average of last N observations
#' @keywords mavback
#' @param x vector to compute rolling moving average
#' @export
#' @examples
#' x <- 1:10
#' mavback(x)

mavback <- function(x,n){
  
  mav <- function(x,n){stats::filter(x,rep(1/n,n), sides=1)} 
  
  a<-mav(x,1)
  b<-mav(x,(n+1))
  c<-(1/n)*((n+1)*b - a)
  return(c)
}