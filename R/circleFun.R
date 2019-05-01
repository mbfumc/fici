#' Generate Perimeter Coordinates for Circle
#'
#' This function allows you to generate a dataframe with x and y coordinates that define the perimeter of a circle
#' @keywords circle
#' @param center Where the center of the circle is defined
#' @param diameter Diameter of the circle
#' @param npoints Number of points to generate
#' @export
#' @examples
#' # 5 points that define a circle centered at (1,1) with a diameter of 2
#' circleFun(center = c(1,1), diameter = 2, npoints = 5)

circleFun <- function(center = c(0,0),diameter = 1, npoints = 100){
  r = diameter / 2
  tt <- seq(0,2*pi,length.out = npoints)
  xx <- center[1] + r * cos(tt)
  yy <- center[2] + r * sin(tt)
  return(data.frame(x = xx, y = yy))
};