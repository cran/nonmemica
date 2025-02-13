% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/xpath.R
\name{xpath.xml_document}
\alias{xpath.xml_document}
\title{Evaluate xpath Expression in Document Context}
\usage{
\method{xpath}{xml_document}(x, xpath, ...)
}
\arguments{
\item{x}{xml_document}

\item{xpath}{xpath expression to evaluate}

\item{...}{ignored}
}
\value{
vector
}
\description{
Evaluates an xpath expression for a given document.
}
\details{
The resulting nodeset is scavenged for text, and coerced to best of numeric or character.
}
\seealso{
Other xpath: 
\code{\link{as.xml_document}()},
\code{\link{as.xml_document.character}()},
\code{\link{as.xml_document.numeric}()},
\code{\link{xpath}()},
\code{\link{xpath.default}()}
}
\concept{xpath}
