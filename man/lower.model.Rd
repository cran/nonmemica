% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getset.R
\name{lower.model}
\alias{lower.model}
\title{Get Lower Bounds for Model Initial Estimates}
\usage{
\method{lower}{model}(x, ...)
}
\arguments{
\item{x}{model}

\item{...}{dots}
}
\description{
Gets lower bounds for model initial estimates.
}
\examples{
library(magrittr)
options(project = system.file('project/model',package='nonmemica'))
1001 \%>\% as.model \%>\% lower
}
\seealso{
Other lower: 
\code{\link{lower<-.model}()},
\code{\link{lower<-}()},
\code{\link{lower}()}
}
\concept{lower}
