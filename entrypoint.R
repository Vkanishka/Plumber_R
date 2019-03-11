library(plumber)

plumber::plumb("plumber.R")$run(port = 8080)

# Listening on port 8080






#else can be done in this way

# importing api description file 'api.R'
# r <- plumb("api.R")
#listening on port 8080
# r$run(port=8080)" 

