% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model.R
\name{read.model}
\alias{read.model}
\title{Read model}
\usage{
read.model(con, parse = TRUE, ...)
}
\arguments{
\item{con}{model connection}

\item{parse}{whether to convert thetas to inits objects}

\item{...}{passed arguments}
}
\value{
character
}
\description{
Read model.
}
\details{
Reads model from a connection.
}
\seealso{
Other as.model: 
\code{\link{[.model}()},
\code{\link{[[.model}()},
\code{\link{as.model}()},
\code{\link{as.model.character}()},
\code{\link{as.model.numeric}()},
\code{\link{write.model}()}
}
\concept{as.model}
\keyword{internal}
