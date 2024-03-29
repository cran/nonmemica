% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/likebut.R
\name{runlog.character}
\alias{runlog.character}
\title{Create a Runlog for Character}
\usage{
\method{runlog}{character}(x, dependencies = FALSE, digits = 3, places = 0, ...)
}
\arguments{
\item{x}{object}

\item{dependencies}{whether to log runs in lineage(s) as well}

\item{digits}{significance for parameters}

\item{places}{rounding for objective function}

\item{...}{passed arguments}
}
\value{
data.frame
}
\description{
Creates a Runlog for character by treating x as modelname(s).
}
\examples{
library(magrittr)
options(project = system.file('project/model',package='nonmemica'))
# likebut(2001,'2 cmt', 2002)              # edit manually, then ...
# likebut(2002,'add. err.', 2003)          # edit manually, then ...
# likebut(2003,'allo. WT on CL',2004)      # edit manually, then ...
# likebut(2004,'estimate allometry', 2005) # edit manually, then ...
# likebut(2005,'SEX on CL', 2006)          # edit manually, then ...
# likebut(2006,'full block omega', 2007)   # edit manually, then run all
2007 \%>\% runlog(dependencies = TRUE)
}
\seealso{
\code{\link{likebut}}

Other runlog: 
\code{\link{runlog.numeric}()},
\code{\link{runlog}()}
}
\concept{runlog}
