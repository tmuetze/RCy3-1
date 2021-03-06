\name{setCenter}
\alias{setCenter}
\alias{setCenter,CytoscapeWindowClass-method}
\title{setCenter}
\description{
  This method can be used to pan and scroll the Cytoscape
  canvas, which is adjusted (moved) so that the specified
  x and y coordinates are at the center of the visible window.
}
\usage{
setCenter(obj, x, y)
}
\arguments{
  \item{obj}{a \code{CytoscapeWindowClass} object. }
  \item{x}{a \code{numeric} object.}
  \item{y}{a \code{numeric} object.}
}

\value{
None.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  getCenter
  getZoom
  setZoom
 }

\examples{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  window.title = 'setCenter demo'
  cw <- CytoscapeWindow (window.title, graph=makeSimpleGraph())
  displayGraph (cw)
  layoutNetwork(cw, 'force-directed')
  original.center <- getCenter (cw)  # named list, "x" and "y".
    # now pan the display to the left, by setting the the visual center
    # to increasing values of x, without changing the location of the
    # simple graph
  setCenter (cw, 200, 90)
  system ('sleep 0.1')
  setCenter (cw, 100, 90)
  system ('sleep 0.1')
  setCenter (cw, 0, 90)
  system ('sleep 0.1')
  setCenter (cw, -100, 90)
  system ('sleep 0.1')
    # and now pan back to the original position
  setCenter (cw, -100, 0)
  system ('sleep 0.1')
  setCenter (cw, original.center$x, original.center$y)
}

\keyword{graph}
