#!/bin/bash
rand=`cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 32 | head -n 1`
/usr/bin/php lib/generate-pdf.php "$2" > /tmp/stamp_$rand.pdf
pdftk "$1" stamp /tmp/stamp_$rand.pdf output /tmp/output_$rand.pdf
echo /tmp/output_$rand.pdf
