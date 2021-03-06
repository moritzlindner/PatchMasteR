% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dropPMRecording.R
\name{DropPRecording}
\alias{DropPRecording}
\title{Drops PRecording(s) from PCollection}
\usage{
DropPRecording(object, PRecording = NULL, Group = NULL)
}
\arguments{
\item{object}{a PCollection object}

\item{PRecording}{A name of a \linkS4class{PRecording} object in the collection, or a list thereof}

\item{Group}{A name of A group in the\linkS4class{PRecording} object Drops all \linkS4class{PRecording} belonging to that group. Alternative to \var{PRecording}.}
}
\value{
A \linkS4class{PCollection} object
}
\description{
Drops PRecording(s) from PCollection
}
