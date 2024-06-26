% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GrenamePolicy.R
\name{GrenamePolicy}
\alias{GrenamePolicy}
\title{GrenamePolicy}
\usage{
GrenamePolicy(
  refreshToken,
  policyId,
  newName = NULL,
  baseurl = "http://localhost:3000/"
)
}
\arguments{
\item{refreshToken}{Character. JWT refresh token returned by Glogin()$refreshToken.}

\item{policyId}{Character. The Guardian ID of the draft policy to rename.}

\item{newName}{Character. The new name for the policy.}

\item{baseurl}{Character. Base URL of the targeted Guardian instance. Defaults
to "http://localhost:3000/".}
}
\value{
Logical. TRUE if the policy was renamed successfully; will throw an
  error otherwise.
}
\description{
Renames a draft policy on the Guardian instance..
}
