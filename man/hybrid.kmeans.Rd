% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hybrid.kmeans.R
\name{hybrid.kmeans}
\alias{hybrid.kmeans}
\title{Hybrid K-means}
\usage{
hybrid.kmeans(x, k = 2, hmethod = "ward.D", stat = mean, ...)
}
\arguments{
\item{x}{A data.frame or matrix with data to be clustered}

\item{k}{Number of clusters}

\item{hmethod}{The agglomeration method used in hclust}

\item{stat}{The statistic to aggregate class centers (mean or median)}

\item{...}{Additional arguments passed to \code{\link[stats]{kmeans}}}
}
\value{
returns an object of class "kmeans" which has a print and a fitted method
}
\description{
Hybrid K-means clustering using hierarchical clustering to define 
cluster-centers
}
\details{
This method uses hierarchical clustering to define the cluster-centers in the K-means 
clustering algorithm. This mitigates some of the know convergence issues in K-means.
}
\note{
options for hmethod are: "ward.D", "ward.D2", "single", "complete", "average", 
mcquitty", "median", "centroid"
}
\examples{
x <- rbind(matrix(rnorm(100, sd = 0.3), ncol = 2),
           matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))

# Compare k-means to hybrid k-means with k=4		   
km <- kmeans(x, 4)		   
hkm <- hybrid.kmeans(x,k=4)		   

par(mfrow=c(1,2))
  plot(x[,1],x[,2], col=km$cluster,pch=19, main="K-means")
  plot(x[,1],x[,2], col=hkm$cluster,pch=19, main="Hybrid K-means")

}
\references{
Singh, H., & K. Kaur (2013) New Method for Finding Initial Cluster Centroids in 
  K-means Algorithm. International Journal of Computer Application. 74(6):27-30

Ward, J.H., (1963) Hierarchical grouping to optimize an objective function. Journal 
  of the American Statistical Association. 58:236-24
}
\seealso{
\code{\link[stats]{kmeans}} for available ... arguments and function details

\code{\link[stats]{hclust}} for details on hierarchical clustering
}
\author{
Jeffrey S. Evans  <jeffrey_evans@tnc.org>
}
