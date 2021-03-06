% Generated by roxygen2 (4.0.2): do not edit by hand
\name{update_km_noisyEGO}
\alias{update_km_noisyEGO}
\title{Update of one or two Kriging models when adding new observation}
\usage{
update_km_noisyEGO(model, x.new, y.new, noise.var = 0, type = "UK",
  add.obs = TRUE, index.in.DOE = NULL, CovReEstimate = TRUE,
  NoiseReEstimate = FALSE, estim.model = NULL, nugget.LB = 1e-05)
}
\arguments{
\item{model}{a Kriging model of "km" class}

\item{x.new}{a matrix containing the new points of experiments}

\item{y.new}{a matrix containing the function values on the points NewX}

\item{noise.var}{scalar: noise variance}

\item{type}{kriging type: "SK" or "UK"}

\item{add.obs}{boolean: if TRUE, the new point does not exist already in
the design of experiment model@X}

\item{index.in.DOE}{optional integer: if add.obs=TRUE, it specifies the
index of the observation in model@X corresponding to x.new}

\item{CovReEstimate}{optional boolean specfiying if the covariance
parameters should be re-estimated (default value = TRUE)}

\item{NoiseReEstimate}{optional boolean specfiying if the noise variance
should be re-estimated (default value = TRUE)}

\item{estim.model}{optional input of "km" class. Required if
NoiseReEstimate=TRUE, in order to deal with repetitions.}

\item{nugget.LB}{optional scalar: is used to define a lower bound on the
noise variance.}
}
\value{
A list containing: \item{model}{ The updated Kriging model }
\item{estim.model}{If NoiseReEstimate=TRUE, the updated estim.model}
\item{noise.var}{If NoiseReEstimate=TRUE, the re-estimated noise variance}
}
\description{
Update of a noisy Kriging model when adding new observation, with or
without covariance parameter re-estimation.  When the noise level is
unkown, a twin model "estim.model" is also updated.
}
\author{
Victor Picheny
}
\references{
V. Picheny and D. Ginsbourger (2013), Noisy kriging-based optimization
methods: A unified implementation within the DiceOptim package,
\emph{Computational Statistics & Data Analysis}
}

