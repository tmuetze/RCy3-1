\name{setDefaultEdgeFontSize}
\alias{setDefaultEdgeFontSize}
\alias{setDefaultEdgeFontSize,CytoscapeConnectionClass-method}
\title{setDefaultEdgeFontSize}
\description{
Set the default edge font size.
}
\usage{
setDefaultEdgeFontSize(obj, new.size, vizmap.style.name = "default")
}
\arguments{
  \item{obj}{a \code{CytoscapeConnectionClass} object. }
  \item{new.size}{an \code{integer}.}
  \item{vizmap.style.name}{a visual style.}
}

\value{
None.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
   setDefaultNodeShape
   setDefaultNodeFontSize
   setDefaultNodeSize
   setDefaultNodeColor
   setDefaultNodeBorderColor
   setDefaultNodeBorderWidth
   setDefaultNodeFontSize
   setDefaultNodeLabelColor
   setDefaultEdgeLineWidth
   setEdgeColorRule
}

\examples{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  cw <- CytoscapeWindow ('test setDefaultEdgeFontSize', graph=makeSimpleGraph())
  displayGraph (cw)
  redraw (cw)
  layoutNetwork(cw, 'force-directed')
  setEdgeLabelRule (cw, 'edgeType')
  setDefaultEdgeFontSize (cw, 20)
  setDefaultEdgeFontSize (cw, 1)
  #redraw (cw) # not required anymore
}

\keyword{graph}
