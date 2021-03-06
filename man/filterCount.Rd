% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/filterCount.R
\name{filterCount}
\alias{filterCount}
\title{Subcorpus With Count Filter}
\usage{
filterCount(object, text, count = 1L, out = c("text", "bin", "count"))
}
\arguments{
\item{object}{A \code{\link{textmeta}} object}

\item{text}{Not necassary if \code{object} is specified, else should be
\code{object\$text}: list of article texts}

\item{count}{An integer marking how many words must at least be found in the text.}

\item{out}{Type of output: \code{text} filtered corpus,
\code{bin} logical vector for all texts,
\code{count} the counts.}
}
\value{
Filtered list of texts.
}
\description{
Creates a subcorpus including specific articles.
}
\examples{
texts <- list(A="Give a Man a Fish, and You Feed Him for a Day.
Teach a Man To Fish, and You Feed Him for a Lifetime",
B="So Long, and Thanks for All the Fish",
C="A very able manipulative mathematician, Fisher enjoys a real mastery
in evaluating complicated multiple integrals.")

filterCount(text=texts, count=10L)

filterCount(text=texts, count=10L, out="bin")

filterCount(text=texts, count=10L, out="count")
}
