% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/path.R
\name{specfile.character}
\alias{specfile.character}
\title{Identify the Data Specification File for a Model}
\usage{
\method{specfile}{character}(x, find = "\\\\.csv$", use = ".spec", ...)
}
\arguments{
\item{x}{the model name}

\item{find}{file extension to replace}

\item{use}{file extension to use}

\item{...}{pass ext over-ride default file extension in datafile()}
}
\value{
character
}
\description{
Identifies the data specification file associated with the datafile used by a model. Locates the datafile specified in the control stream, and substitutes a different extension.
}
\examples{
library(spec)
source <- system.file(package = 'nonmemica','project')
target <- tempdir()
target <- gsub('\\\\\\\\','/',target) # for windows
file.copy(source,target,recursive = TRUE)
project <- file.path(target,'project','model')
options(project = project)
library(magrittr)
1001 \%>\% datafile
datafile(1001) \%matches\% specfile(1001)
1001 \%>\% specfile
1001 \%>\% specfile \%>\% read.spec
}
\seealso{
datafile

Other path: 
\code{\link{datafile.character}()},
\code{\link{datafile.numeric}()},
\code{\link{datafile}()},
\code{\link{modeldir}()},
\code{\link{modelfile}()},
\code{\link{modelpath.character}()},
\code{\link{modelpath.numeric}()},
\code{\link{modelpath}()},
\code{\link{psn_options}()},
\code{\link{specfile.numeric}()},
\code{\link{specfile}()}
}
\concept{path}
