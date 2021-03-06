% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/download.hansen.R
\name{download.hansen}
\alias{download.hansen}
\title{Download Hansen Forest 2000-2013 Change}
\usage{
download.hansen(
  tile,
  data.type = c("loss"),
  download.folder = c("current", "temp")
)
}
\arguments{
\item{tile}{Granule index (See project URL for granule grid index)}

\item{data.type}{Type of data to download options: 'treecover2000', 'loss',
'gain', 'lossyear', datamask', 'first', 'last'}

\item{download.folder}{Destination folder}
}
\value{
Downloaded Hansen forest loss tif files
}
\description{
Download of Hansen Global Forest Change 2000-2013
}
\details{
Available products:
treecover2000, loss, gain, lossyear, datamask, first, or last
\itemize{
\item treecover2000 - (Tree canopy cover for year 2000) - Tree cover in the year
2000, defined as canopy closure for all vegetation taller than 5m in height.
Encoded as a percentage per output grid cell, in the range 0-100.
\item loss - (Global forest cover loss 2000-2013) - Forest loss during the period
2000-2013,  defined as a stand-replacement disturbance, or a change from a
forest to non-forest state. Encoded as either 1 (loss) or 0 (no loss).
\item gain - (Global forest cover gain 2000-2012) - Forest gain during the period
2000-2012, defined as the inverse of loss, or a non-forest to forest change
entirely within the study period. Encoded as either 1 (gain) or 0 (no gain).
\item lossyear - (Year of gross forest cover loss event) - A disaggregation of total
forest loss to annual time scales. Encoded as either 0 (no loss) or else a value
in the range 1-13, representing loss detected primarily in the year 2001-2013.
\item datamask - (Data mask) - Three values representing areas of no data (0), mapped
land surface (1), and permanent water bodies (2).
\item first - (Circa year 2000 Landsat 7 cloud-free image composite) - Reference
multispectral imagery from the first available year, typically 2000. If no
cloud-free observations were available for year 2000, imagery was taken from
the closest year with cloud-free data, within the range 1999-2012.
\item last - (Circa year 2013 Landsat cloud-free image composite) - Reference
multispectral imagery from the last available year, typically 2013. If no
cloud-free observations were available for year 2013, imagery was taken
from the closest year with cloud-free data, within the range 2010-2012.
}

Project website with 10x10 degree granule index:
\url{ http://earthenginepartners.appspot.com/science-2013-global-forest/download_v1.1.html }
}
\examples{
\donttest{
# Download single tile
 download.hansen(tile=c('00N', '130E'), data.type=c('loss', 'lossyear'), 
                 download.folder=getwd())

# Batch download of multiple tiles
tiles <- list(c('00N', '140E'), c('00N', '130E'))
  for( j in 1:length(tiles)){
    download.hansen(tile=tiles[[j]], data.type=c('loss'))  
 }
}

}
\references{
Hansen, M. C., P. V. Potapov, R. Moore, M. Hancher, S. A. Turubanova, A. Tyukavina,
D. Thau, S. V. Stehman, S. J. Goetz, T. R. Loveland, A. Kommareddy, A. Egorov,
L. Chini, C. O. Justice, and J. R. G. Townshend. (2013) High-Resolution Global Maps
of 21st-Century Forest Cover Change. Science 342:850-53.
}
\author{
Jeffrey S. Evans  \href{mailto:jeffrey_evans@tnc.org}{jeffrey_evans@tnc.org}
}
