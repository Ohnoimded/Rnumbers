#' zero
#' prints zero if you need a zero anytime
#' @param zero Just zero
#' @param  printing Option to return or print the value to console
#' @return zero
#' @examples
#' zero <- zero();
#' @export
zero <- function(printing=T) {
  if (printing!=T){
    return (0)
  }else{print(0)}

}

