% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/training.R
\name{analyze_training}
\alias{analyze_training}
\title{Visualize training of Neural Network}
\usage{
analyze_training(object)
}
\arguments{
\item{object}{a model created by \code{\link{dnn}}, \code{\link{cnn}} or \code{\link{mmn}}}
}
\value{
a 'plotly' figure
}
\description{
After training a model with cito, this function helps to analyze the training process and decide on best performing model.
Creates a 'plotly' figure which allows to zoom in and out on training graph
}
\details{
The baseline loss is the most important reference. If the model was not able to achieve a better (lower) loss than the baseline (which is the loss for a intercept only model), the model probably did not converge. Possible reasons include an improper learning rate, too few epochs, or too much regularization. See the \code{?dnn} help or the \code{vignette("B-Training_neural_networks")}.
}
\examples{
\donttest{
if(torch::torch_is_installed()){
library(cito)
set.seed(222)
validation_set<- sample(c(1:nrow(datasets::iris)),25)

# Build and train  Network
nn.fit<- dnn(Sepal.Length~., data = datasets::iris[-validation_set,],validation = 0.1)

# show zoomable plot of training and validation losses
analyze_training(nn.fit)

# Use model on validation set
predictions <- predict(nn.fit, iris[validation_set,])

# Scatterplot
plot(iris[validation_set,]$Sepal.Length,predictions)
}
}
}
