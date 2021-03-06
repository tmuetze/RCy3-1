\name{getEdgeAttributeNames}

\alias{getEdgeAttributeNames}
\alias{getEdgeAttributeNames,CytoscapeConnectionClass-method}

\title{getEdgeAttributeNames}
\description{
Node and edge attributes belong to the Cytoscape session as a whole, not
to a particular window.  Use this method to find out the name of the
currently defined edge attributes.
}
\usage{
getEdgeAttributeNames(obj)
}
\arguments{
  \item{obj}{a \code{CytoscapeConnectionClass} object or CytoscapeWindow
    object. }
}

\value{
A list of names.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  getEdgeAttribute
  deleteEdgeAttribute
  getNodeAttributeNames
}

\examples{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  cw <- CytoscapeWindow ('demo.getEdgeAttributeNames', graph=makeSimpleGraph())
  displayGraph (cw)
  print (getEdgeAttributeNames (cw))
    # [1] "name"        "interaction" "edgeType"    "score"       "misc"   
}

\keyword{graph}
