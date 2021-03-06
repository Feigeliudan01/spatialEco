#' @title Solar-radiation Aspect Index
#' @description Calculates the Roberts and Cooper (1989) Solar-radiation 
#'              Aspect Index
#' 
#' @param x    raster object
#' @param ...  Additional arguments passed to raster::calc
#' 
#' @return 
#' raster class object of oberts and Cooper (1989) Solar-radiation Aspect Index
#'
#' @description 
#' Roberts and Cooper (1989) rotates (transforms) the circular aspect to assign a 
#' value of zero to land oriented in a north-northeast direction, (typically the 
#' coolest and wettest orientation), and a value of one on the hotter, dryer 
#' south-southwesterly slopes. The result is a continuous variable between 0 - 1. 
#' The metric is defined as: trasp = ( 1 - cos((pi/180)(a-30) ) / 2 
#' where; a = aspect in degrees
#'
#' @author Jeffrey S. Evans  <jeffrey_evans@@tnc.org>
#' 
#' @references 
#' Roberts. D.W., and Cooper, S.V. (1989). Concepts and techniques of vegetation mapping. 
#' In Land Classifications Based on Vegetation: Applications for Resource Management.
#' USDA Forest Service GTR INT-257, Ogden, UT, pp 90-96
#'
#' @examples 
#'   library(raster)
#'   data(elev)
#'   s <- trasp(elev)
#'     plot(s)
#'     
#' @export
trasp <- function(x, ...) {  
  if (!inherits(x, "RasterLayer")) stop("MUST BE RasterLayer OBJECT")
    asp <- raster::terrain(x, out='aspect', unit='degrees') 
    return( raster::calc(asp, fun=function(x) { (1 - cos( (3.142/180)  *(x - 30)) ) / 2 }, ... ) )
}  
