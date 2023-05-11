#' zero
#'
#' prints zero if you need a zero anytime
#' @param zero Just zero
#' @return zero
#' @examples
#' zero <- zero();
#' @export
zero <- function(printing=T) {
  if (printing!=T){
    return (0)
  }else{print(0)}

}

