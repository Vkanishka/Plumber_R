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

#* Plot a Histogram
#* @png
#* @get /plot
function() {
  rand <- rnorm(100)
  hist(rand)
}

#* updating an existing histogram
#* @png
#* @put /plot
function() {
  rand <- rnorm(50)
  hist(rand)
}


#* adding a new plot to the system
#* @png
#* @post /plot
function() {
  rand <- rnorm(200)
  hist(rand)
}

#* deleteing a new plot from the system
#* @png
#* @delete /plot
function() {
  rand <- rnorm(20)
  hist(rand)
}
