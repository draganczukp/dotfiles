#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#393F45/g' \
         -e 's/rgb(100%,100%,100%)/#DFE2E5/g' \
    -e 's/rgb(50%,0%,0%)/#1C2023/g' \
     -e 's/rgb(0%,50%,0%)/#C7AE95/g' \
 -e 's/rgb(0%,50.196078%,0%)/#C7AE95/g' \
     -e 's/rgb(50%,0%,50%)/#565E65/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#565E65/g' \
     -e 's/rgb(0%,0%,50%)/#F3F4F5/g' \
	$@
