% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NetStats.R
\name{build_netstats}
\alias{build_netstats}
\title{Build Network Statistics for Network Estimation}
\usage{
build_netstats(epistats, netparams, network.size = 10000,
  expect.mort = 0.000478213, browser = FALSE, edges.avg = FALSE)
}
\arguments{
\item{epistats}{Output from \code{\link{build_epistats}}.}

\item{netparams}{Output from \code{\link{build_netparams}}.}

\item{network.size}{Size of the starting network.}

\item{expect.mort}{Expected average mortality level to pass into
\code{\link{dissolution_coefs}} function.}

\item{browser}{Run function in interactive browser mode.}

\item{edges.avg}{Whether degree differences exist along race. TRUE
or FALSE; default of FALSE.}
}
\description{
Build Network Statistics for Network Estimation
}
\details{
\code{build_netstats} takes output from \code{\link{build_epistats}} and
\code{\link{build_netparams}} to build the relevant network statistics
that will be used in network estimation using package \link{EpiModel}.

The param \code{edge.avg} allows a user set the network stated edges
to that estimated in \code{\link{build_netparams}} (divided by 2),
with "edges.avg = FALSE", or, if sample proportions do not match
ARTnet population proportions, set to a weighted racial average
with "edges.avg = TRUE."
}
\examples{
epistats <- build_epistats(geog.lvl = "city", geog.cat = "Atlanta")
netparams <- build_netparams(epistats = epistats, smooth.main.dur = TRUE)
netstats <- build_netstats(epistats, netparams)

}
