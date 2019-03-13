# Plumber_R
Turn your R code into a web API.


# USE:

Run the API.R 
so called Plumber.R

# Plumber and web API

The plumber package for R makes it easy to expose existing R code as a webservice via an API (https://www.rplumber.io/, Trestle Technology, LLC 2017).

You take an existing R script and make it accessible with plumber by simply adding a few lines of comments. If you have worked with Roxygen before, e.g. when building a package, you will already be familiar with the core concepts. If not, here are the most important things to know:

you define the output or endpoint
you can add additional annotation to customize your input, output and other functionalities of your API
you can define every input parameter that will go into your function
every such annotation will begin with either #' or #*
With this setup, we can take a trained machine learning model and make it available as an API. With this API, other programs can access it and use it to make predictions.

# What are APIs and webservices?
With plumber, we can build so called HTTP APIs. HTTP stands for Hypertext Transfer Protocol and is used to transmit information on the web; API stands for Application Programming Interface and governs the connection between some software and underlying applications. Software can then communicate via HTTP APIs. This way, our R script can be called from other software, even if the other program is not written in R and we have built a tool for machine-to-machine communication, i.e. a webservice.
