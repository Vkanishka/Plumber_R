#initial commit 

# plumber.R
# load plumber package 
library(plumber)


#* @apiTitle Testing plumber API
# (#* @api Swagger annotations)

#' Echo the parameter that was sent in
#' @param msg The message to echo back.
#' @get /echo
function(msg=""){
  list(msg = paste0("The message is: '", msg, "'"))
}

