% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GgetSchema.R
\name{GgetSchema}
\alias{GgetSchema}
\title{GgetSchema}
\usage{
GgetSchema(
  refreshToken,
  baseurl = "http://localhost:3000/",
  schemaId,
  returndf = FALSE
)
}
\arguments{
\item{refreshToken}{Character. JWT refresh token returned by Glogin()$refreshToken.}

\item{baseurl}{Character. Base url of the targeted Guardian instance.
Defaults to "http://localhost:3000/".}

\item{schemaId}{Character. The ID of the schema to retrieve.}
}
\value{
list or data frame
}
\description{
Get a specific schema.
}
