#' Create an xml_document in a Project Context
#'
#' Creates an xml_document in a project context.
#' @param x object of dispatch
#' @param ... arguments to methods
#' @seealso \code{\link{xpath}}
#' @return xml_document
#' @examples
#' library(magrittr)
#' options(project = system.file('project/model',package='nonmemica'))
#' 1001 %>% as.xml_document
#' @export
#' @family xpath
as.xml_document <- function(x,...)UseMethod('as.xml_document')

#' Coerce xml_document to xml_document
#' 
#' Coerces xml_document to xml_document
#' @param x xml_document
#' @param ... ignored
#' @return xml_document
#' @describeIn as.xml_document xml_document method
#' @export
#' @family xpath
as.xml_document.xml_document <- function(x,...)x

#' Coerce numeric to xml_document
#' 
#' Coerces numeric to xml_document
#' @param x numerc
#' @param ... passed arguments
#' @return xml_document
#' @keywords internal
#' @export
#' @family xpath
as.xml_document.numeric  <- function(x,...)as.xml_document(as.character(x),...)

#' Create xml_document From Character
#'
#' Creates an xml_document from character (modelname or filepath).
#' @import xml2
#' @param x file path or run name
#' @param strip.namespace whether to strip e.g. nm: from xml elements
#' @param ... passed to modelpath()
#' @return xml_document
#' @export
#' @family xpath
as.xml_document.character <- function(x,strip.namespace=TRUE,...){
  if(file_test('-d', modelpath(x))) x <- modelpath(x, 'xml',...)
  if(!file_test('-f', x)) stop('could not find ', x)
  if(!strip.namespace)return(read_xml(x))
  x <- readLines(x)
  x <- paste(x,collapse=' ')
  x <- gsub('<[a-zA-Z]+:','<',x)
  x <- gsub('</[a-zA-Z]+:','</',x)
  x <- gsub(' +[a-zA-Z]+:',' ',x)
  read_xml(x)
}

#' Evaluate Xpath Expression
#'
#' Evaluates an xpath expression.
#' 
#' The resulting nodeset is scavenged for text, and coerced to best of numeric or character.
#' @param x xml_document
#' @param ... passed arguments
#' @export
#' @family xpath
#' @examples
#' library(magrittr)
#' options(project = system.file('project/model',package='nonmemica'))
#' 1001 %>% xpath('//etashrink/row/col')
xpath <- function(x,...)UseMethod('xpath')

#' Evaluate xpath Expression in Default Context
#'
#' Coerces x to xml_document and evaluates.
#' @param x default
#' @param ... passed arguments
#' @return vector
#' @export
#' @family xpath
xpath.default <- function(x,...)xpath(as.xml_document(x),...)

#' Evaluate xpath Expression in Document Context
#'
#' Evaluates an xpath expression for a given document.
#' 
#' The resulting nodeset is scavenged for text, and coerced to best of numeric or character.
#' @import magrittr
#' @import xml2
#' @param x xml_document
#' @param ... ignored
#' @param xpath xpath expression to evaluate
#' @return vector
#' @export
#' @family xpath
xpath.xml_document <- function(x, xpath,...)as.best(xml_text(xml_find_all(x,xpath)))
  

