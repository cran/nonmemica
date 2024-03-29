% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/path.R
\name{relativizePath}
\alias{relativizePath}
\title{Relativize a Path}
\usage{
relativizePath(x, dir = getwd(), sep = "/", ...)
}
\arguments{
\item{x}{a file path}

\item{dir}{a reference directory}

\item{sep}{path separator}

\item{...}{ignored arguments}
}
\description{
Relativizes a path.
}
\details{
x and dir are first normalized, then x is expressed relative to dir.
If x and dir are on different drives (i.e. C:/ D:/)  x is returned
as an absolute path.
}
