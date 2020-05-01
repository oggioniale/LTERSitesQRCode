---
title: "How to generate QR Code of eLTER-RI by qrencoder package"
output: 
  html_document:
    toc: true
    toc_depth: 5
    toc_float: true
    theme: flatly
    includes:
      after_body: footer.html
author: "Alessandro Oggioni - 27 April 2019"
---


##Introduction
How to generate QRCode by [**qrencoder package**](https://github.com/hrbrmstr/qrencoder)?
This is a R Markdown notebook, when you execute code within the notebook, the results appear beneath the code.

## Data
Import `csv file` into R and verify the content.


```r
suppressPackageStartupMessages(library(DT))
# Import Networks list
networksLTER <- read.csv2("./nameCoordsNetworks.csv", header = T, sep = ",")
# Import Sites list
sitesLTER<- read.csv2("./nameCoordsSites.csv", header = T, sep = ";")
```

### LTER Networks

```r
DT::datatable(networksLTER)
```

preserveeb66b175164a8687

### LTER Sites

```r
DT::datatable(sitesLTER)
```

preserve4ee1054d7edacf55

## QR Codes
[**qrencoder package**](https://github.com/hrbrmstr/qrencoder) allows to create QRCode, without limit.
The QR Code generate below is about [**LTER-Italy Network**](https://deims.org/f30007c4-8a6e-4f11-ab87-569db54638fe). The URL of this network is collected by networks LTER dataframe imported above.


```r
# devtools::install_github("hrbrmstr/qrencoder")
suppressPackageStartupMessages(library(qrencoder))
urlSite <- as.character(networksLTER$URL[12])
par(mar = c(0,0,0,0))
image(qrencode_raster(urlSite), 
      asp=1, col=c("white", "#000000"), axes=FALSE, 
      xlab="", ylab="")
```

<img src="QRCodeGenerator_files/figure-html/QRCODE Network-1.png" width="672" />

The QR Code generate below is about [**Lago Maggiore LTER site**](https://deims.org/f30007c4-8a6e-4f11-ab87-569db54638fe). The URL of this network is collected by sites LTER dataframe imported above.

```r
urlSite <- as.character(sitesLTER$deimsid[79])
par(mar = c(0,0,0,0))
image(qrencode_raster(urlSite), 
      asp=1, col=c("white", "#0578BE"), axes=FALSE, 
      xlab="", ylab="")
```

<img src="QRCodeGenerator_files/figure-html/QRCODE Site-1.png" width="672" />
