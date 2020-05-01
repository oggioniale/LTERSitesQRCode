# devtools::install_github("hrbrmstr/qrencoder")
library(qrencoder)
setwd("../RScripts/QRCode_Encoder")
# Import Networks list
networksLTER <- read.csv2("nameCoordsNetworks.csv", header = T, sep = ",")
# Import Sites list
sitesLTER <- read.csv2("nameCoordsSites.csv", header = T, sep = ";")

# QR Code for Networks
for (i in 1:nrow(networksLTER)) {
  output_image_network <- paste0("LTERNetwork_", as.character(networksLTER$Country[i]), ".png")
  urlSite <- as.character(networksLTER$URL[i])
  par(mar = c(0,0,0,0))
  png(filename = paste0("qrcodeNetworks/", output_image_network))
  image(qrencode_raster(urlSite), 
        asp=1, col=c("white", "#000000"), axes=FALSE, 
        xlab="", ylab="")
  dev.off()
}

# QR Code for Sites
for (i in 1:nrow(sitesLTER)) {
  output_image_site <- paste0("LTERsite_", as.character(sitesLTER$name[i]), ".png")
  urlSite <- as.character(sitesLTER$deimsid[i])
  par(mar = c(0,0,0,0))
  png(filename = paste0("qrcodeSites/", output_image_site))
  image(qrencode_raster(urlSite), 
        asp=1, col=c("white", "#0578BE"), axes=FALSE, 
        xlab="", ylab="")
  dev.off()
}
