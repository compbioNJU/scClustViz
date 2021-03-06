% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helperFx.R
\name{labelCellTypes}
\alias{labelCellTypes}
\title{scClustViz helper fx: Add predicted cell type names to cluster labels}
\usage{
labelCellTypes(sCV, cellMarkers, symbolMap = NULL)
}
\arguments{
\item{sCV}{An object of class \code{sCVdata}.}

\item{cellMarkers}{The \code{cellMarkers} argument from
\code{\link{runShiny}}. A list of marker genes for expected cell types.}

\item{symbolMap}{Default=NULL. The output of \code{\link{map2symbol}}. If the
rownames (gene identifiers) of your input data object match the gene
identifiers used in your \code{cellMarkers} list, you can leave this as
\code{NULL}, since no gene identifier mapping needs to be performed.}
}
\value{
Returns the sCVdata object with an added attribute
  '\code{ClusterNames}' to \code{Clusters(sCV)} containing the assigned cell
  type names for each cluster. Stores the \code{cellMarkers} list as an
  attribute in \code{Clusters(sCV)}. Also adds four new variables to
  \code{ClustGeneStats(sCV)}: Official gene symbols are added as variable
  \code{genes}. The remaining variables are used in
  \code{\link{plot_clusterGenes_markers}} to plot cell type marker genes in
  the Shiny app (see \code{\link{runShiny}}). Variables \code{cMu} and
  \code{cMs} are logical vectors indicating genes that are unique to and
  shared across cell type markers respectively. Variable \code{overCut}
  indicates which genes should be labelled in the plot.
}
\description{
A bare-bones method of predicting cell types from marker genes.
}
\details{
Assigns cell type labels to each cluster based on the rank of median gene
expression of marker genes for each cell type. There are many more
intelligent methods for cell type prediction out there.  See
\href{https://doi.org/10.1101/521914}{CellAssign}, for example.
}
