#!/bin/sh
sed -i \
         -e 's/#282a2e/rgb(0%,0%,0%)/g' \
         -e 's/#e0e0e0/rgb(100%,100%,100%)/g' \
    -e 's/#1d1f21/rgb(50%,0%,0%)/g' \
     -e 's/#6ec46e/rgb(0%,50%,0%)/g' \
     -e 's/#373b41/rgb(50%,0%,50%)/g' \
     -e 's/#ffffff/rgb(0%,0%,50%)/g' \
	*.svg
