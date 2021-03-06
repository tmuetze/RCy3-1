\name{getAllEdgeAttributes}

\alias{getAllEdgeAttributes}
\alias{getAllEdgeAttributes,CytoscapeWindowClass-method}

\title{getAllEdgeAttributes}
\description{
Create a data frame with all the edge attributes for the graph contained
by the supplied CytoscapeWindow object.  Only the local copy of the
graph is queried.  If you want all the (possibly different) edge attributes from the
Cytoscape network which corresponds to this graph, one option is to
create a new CytoscapeWindow; see the existing.CytoscapeWindow function.

}
\usage{
getAllEdgeAttributes(obj, onlySelectedEdges=FALSE)
}
\arguments{
  \item{obj}{a \code{CytoscapeWindowClass} object
    object. }
  \item{onlySelectedEdges}{a \code{logical} variable, used to restrict
    the query.}
}

\value{
A data frame, with a column for each attribute, a row for each edge.
}
\author{Tanja Muetze, Georgi Kolishovski, Paul Shannon}

\seealso{
  getEdgeAttribute
  deleteEdgeAttribute
  getAllNodeAttributes
}

\examples{
  # first, delete existing windows to save memory:
  deleteAllWindows(CytoscapeConnection())

  window.name = 'demo.getAllEdgeAttributes'
  cw = CytoscapeWindow (window.name, graph=makeSimpleGraph ())
  displayGraph (cw)
  redraw (cw)
  layoutNetwork(cw)
    # get all attributes for all edges
  tbl.eda = getAllEdgeAttributes (cw, onlySelectedEdges=FALSE)
  tbl.eda
    #             edgeType source target score         misc
    # A|B   phosphorylates      A      B    35 default misc
    # B|C synthetic lethal      B      C   -12 default misc
    # C|A        undefined      C      A     0 default misc

}

\keyword{graph}
