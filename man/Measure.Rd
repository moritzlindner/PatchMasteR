% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Measure.R
\name{Measure}
\alias{Measure}
\alias{MeasureSweeps}
\alias{MeasureStimResp}
\title{Measurement methods}
\usage{
MeasureSweeps(
  X,
  Trace,
  Sweeps = GetSweepNames(X),
  Time,
  label,
  FUN = mean,
  ReturnPMObject = T
)

MeasureStimResp(X, StimTrace = "V-mon", RespTrace = "I-mon", Time, FUN = mean)
}
\arguments{
\item{Trace}{The name of the trace to perform measurements on}

\item{Sweeps}{List of Traces/Sweeps to keep}

\item{Time}{either a range of time points to keep, or, if \code{TimeExclusive} is \code{TRUE}, then two particular time points}

\item{label}{A label (if \code{Sweeps} has length 1) or a prefix}

\item{FUN}{function to apply on sweep. Can be anything that woks with \link[=base::apply]{apply}. But will be usually \link[=base::mean]{mean}, \link[=base::max]{max}, \link[=base::min]{min}, or \link[=base::`-`]{`-`}.}

\item{ReturnPMObject}{whether to return a PCollection or a Matrix.}

\item{StimTrace}{The name of the Trace that contains the Stimulus}

\item{RespTrace}{The name of the Trace that contains the Response}
}
\value{
MeasureSweeps: A \linkS4class{PRecording} or \linkS4class{PCollection}, respectiveley with an updated MetaData Slot or, if \code{ReturnPMObject=F} a matrix.

MeasureStimResp: A a \link[=base:data.frame]{data.frame} with five columns: "Name","Group","Stimulus","StimTimes","Response"
}
\description{
These methods perform measurements on \linkS4class{PRecording} and \linkS4class{PCollection} objects on a per-sweep basis. They are designed to efficiently collect data e.g. for time series, dose-response or point statistics
}
\section{Functions}{
\itemize{
\item \code{MeasureSweeps}: This function performs the actual measurements. It subsets an object by \code{Trace} and \code{Sweeps}. If \code{FUN} is a binary operator, then applies it to the exact time points given in \code{Time}, else, it applies it to the range indicated by \code{Time}.

\item \code{MeasureStimResp}: This is a convenience method providing easy to process data.frames for generation of time series and dose-response curves
}}

