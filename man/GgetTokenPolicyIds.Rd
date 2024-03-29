% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GgetTokenPolicyIds.R
\name{GgetTokenPolicyIds}
\alias{GgetTokenPolicyIds}
\title{GgetTokenPolicyIds}
\usage{
GgetTokenPolicyIds(refreshToken, baseurl)
}
\arguments{
\item{refreshToken}{Character. JWT refresh token returned by Glogin()$refreshToken.}

\item{baseurl}{Character. Base url. Defaults to "http://localhost:3000/".}
}
\value{
Data frame. A data frame mapping token IDs to policy IDs.
}
\description{
Get the policy IDs in which each token is used. All tokens
 accessible to the current user will be searched.
}
