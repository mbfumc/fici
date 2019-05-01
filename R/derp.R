#' SELECT * From MySQL Table
#'
#' This function allows you to quickly run a SELECT * query.
#' @keywords derp
#' @param conn Database connection
#' @param x Table name
#' @export

derp <- function(conn, x){dbGetQuery(conn,paste("SELECT * from", x))}
