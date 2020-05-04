eLTER_QRCode function
======================

This is one of the R functions produced to support the development of a package dedicated to the eLTER Research Infrastructure (eLTER RI). In this case it’s about how to generate QR Code of [**eLTER-RI sites or network**](https://deims.org/models) by [**DEIMS-ID**](https://deims.org/docs/deimsid.html) and using [**qrencoder package**](https://github.com/hrbrmstr/qrencoder).

Please visit [**documentation**](https://oggioniale.github.io/eLTER_QRCode-function/) for more information about the eLTER_QRCode function.

## Prerequisite:
install qrencoder pakage by
```{r}
devtools::install_github("hrbrmstr/qrencoder")
suppressPackageStartupMessages(library(qrencoder))
```

## Using:
```R 
eLTER_QRCode("https://deims.org/769556a6-0ee6-46a9-acbb-a1f2d51c07e8")
``` 

## Meta:
* Please [provide a issues by ](https://github.com/oggioniale/eLTER_QRCode-function/issues), or email oggionia.a(at)cnr.it
* License: The collection is being developed by Alessandro Oggioni ([IREA-CNR](http://www.irea.cnr.it)) 
![alt text](https://orcid.org/sites/default/files/images/orcid_16x16(1).gif) [https://orcid.org/0000-0002-7997-219X](https://orcid.org/0000-0002-7997-219X)), and it is released under the [GNU General Public License version 3](https://www.gnu.org/licenses/gpl-3.0.html) (GPL‑3).
* Get citation information for LTERSitesQRCode
``` bibtex
```