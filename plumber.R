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


#' Ping to show server is there
#' @get /ping
function() {
  return('')}


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


#* Return the sum of two numbers
#* @param a The first number to add
#* @param b The second number to add
#* @post /sum 
function(a,b){
  as.numeric(a) + as.numeric(b)
}

#* @get /sub
substract <- function(a, b){
  as.numeric(a) - as.numeric(b)
}
