#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#383830/g' \
         -e 's/rgb(100%,100%,100%)/#f5f4f1/g' \
    -e 's/rgb(50%,0%,0%)/#272822/g' \
     -e 's/rgb(0%,50%,0%)/#f4bf75/g' \
 -e 's/rgb(0%,50.196078%,0%)/#f4bf75/g' \
     -e 's/rgb(50%,0%,50%)/#49483e/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#49483e/g' \
     -e 's/rgb(0%,0%,50%)/#f9f8f5/g' \
	$@
