#' My IP
#'
#' Obtain IP address according to ipconfig
#'
#' @return Character vector with IP address
#' @export
#' @examples
#'#' my_ip()

my_ip <- function(){
  ip <- system(command = "ipconfig", intern = T)
  ip <- ip[grep("IPv4", ip)]
  first <- regexpr("IPv4", ip)
  ip <- substr(ip, first+4, nchar(ip) )
  second <- regexpr(":", ip)
  ip <- substr(ip, second + 2, nchar(ip))
  return(ip)
}
