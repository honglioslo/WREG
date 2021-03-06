% Generated by roxygen2 (4.1.0.9000): do not edit by hand
% Please edit documentation in R/Dist.WREG.R
\name{Dist.WREG}
\alias{Dist.WREG}
\title{Distance calculation (WREG)}
\usage{
Dist.WREG(Lat1, Long1, Lat2, Long2, method = 2)
}
\arguments{
\item{Lat1}{Latitude of the first point, in decimal degrees.}

\item{Long1}{Lonigtude of the first point, in decimal degrees.}

\item{Lat2}{Latitude of the second point, in decimal degrees.}

\item{Long2}{Longitude of the second point, in deceimal degrees.}

\item{method}{Idicates which technique to use for distance calculation.  See
 details.}
}
\value{
Returns the distance between the two sites in miles.
}
\description{
\code{Dist.WREG} calculates the distance between two points
 defined by Latitude-Longitude coordinates in decimal degrees.
}
\details{
\code{Dist.WREG} is capable of using two techniques to calculate
 intersite distances. \code{method==1} indicates that the "Nautical Mile"
 approximation should be used. This is the function that is currently
 employed by WREG v. 1.05.  Each arcminute is equal to 1852 meters.
 \code{method==2} indicates that the Haversine approximation should be used.
}
\examples{
# Import some example data
peakFQdir <- paste0(
  file.path(system.file("exampleDirectory", package = "WREG"),
    "pfqImport"))
gisFilePath <- file.path(peakFQdir, "pfqSiteInfo.txt")
importedData <- importPeakFQ(pfqPath = peakFQdir, gisFile = gisFilePath)

# For two sites, compute the inter-site distance
# Use the haversine approximation
intersiteDistance <- Dist.WREG(Lat1 = importedData$BasChars$Lat[1],
  Long1 = importedData$BasChars$Lat[1],
  Lat2 = importedData$BasChars$Lat[2],
  Long2 = importedData$BasChars$Lat[2],
  method = 2)

print(intersiteDistance)
}

