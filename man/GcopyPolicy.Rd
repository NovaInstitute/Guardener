% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GcopyPolicy.R
\name{GcopyPolicy}
\alias{GcopyPolicy}
\title{GcopyPolicy}
\usage{
GcopyPolicy(
  refreshToken,
  messageId = NULL,
  fp = NULL,
  baseurl = "http://localhost:3000/"
)
}
\arguments{
\item{refreshToken}{Character. JWT refresh token returned by Glogin()$refreshToken.}

\item{messageId}{Character. The message ID of the policy to be copied. If provided,
the function will ignore the 'fp' argument. If not provided, the function will
try to copy the policy from the ZIP file provided in the 'fp' argument.}

\item{fp}{Character. The file path of the ZIP file of the policy to be copied.
Ignored if 'messageId' is provided.}

\item{baseurl}{Character. Base URL of the targeted Guardian instance. Defaults
to "http://localhost:3000/".}
}
\value{
Character. The Guardian policy ID of the newly created copy.
}
\description{
Makes a copy of a Guardian policy and pushes it back to the
   Guardian instance as a draft policy.
}
