\name{fitContent}
\alias{fitContent}
\alias{fitContent,CytoscapeWindowClass-method}
\title{fitContent}
\description{
  Display the current graph using all of the available
  window (the Cytoscape drawing canvas).
}
\usage{
fitContent(obj)
}
\arguments{
  \item{obj}{a \code{CytoscapeWindowClass} object. }
}

\value{
None.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  setZoom
  fitSelectedContent
 }

\examples{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  cw <- CytoscapeWindow ('fitContent.test', graph=makeSimpleGraph())
  displayGraph (cw)
  redraw (cw)
  layoutNetwork(cw, 'force-directed')
  setZoom (cw, 0.1)
  fitContent (cw)
  setZoom (cw, 10.0)
  fitContent (cw)
}


\keyword{graph}
