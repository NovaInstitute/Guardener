% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GgetTokens.R
\name{GgetTokens}
\alias{GgetTokens}
\title{GgetTokens}
\usage{
GgetTokens(refreshToken, baseurl = "http://localhost:3000/")
}
\arguments{
\item{refreshToken}{Character. JWT refresh token returned by Glogin()$refreshToken.}

\item{baseurl}{Character. URL where /api/ is hosted. Default "http://localhost:3000/".}
}
\value{
Data frame.
}
\description{
Get a list of tokens accessible to the current user.
}
