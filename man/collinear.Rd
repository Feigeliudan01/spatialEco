% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/colinear.R
\name{collinear}
\alias{collinear}
\title{Collinearity test}
\usage{
collinear(x, p = 0.85, nonlinear = FALSE, p.value = 0.001)
}
\arguments{
\item{x}{A data.frame or matrix containing continuous data}

\item{p}{The correlation cutoff (default is 0.85)}

\item{nonlinear}{A boolean flag for calculating nonlinear correlations 
(FALSE/TRUE)}

\item{p.value}{If nonlinear is TRUE, the p value to accept as the 
significance of the correlation}
}
\value{
Messages and a vector of correlated variables
}
\description{
Test for linear or nonlinear collinearity/correlation in data
}
\details{
Evaluation of the pairwise linear correlated variables to remove is accomplished  
through calculating the mean correlations of each variable and selecting the 
variable with higher mean.
}
\examples{
data(cor.data)

# Evaluate linear correlations on linear data
head( dat <- cor.data[[4]] ) 
pairs(dat, pch=20)
  ( cor.vars <- collinear( dat ) )

# Remove identified variable(s)
head( dat[,-which(names(dat) \%in\% cor.vars)] )

# Evaluate linear correlations on nonlinear data
#   using nonlinear correlation function
plot(cor.data[[1]], pch=20) 
  collinear(cor.data[[1]], p=0.80, nonlinear = TRUE ) 		       

}
\author{
Jeffrey S. Evans  <jeffrey_evans<at>tnc.org>
}
