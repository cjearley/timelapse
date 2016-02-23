# Finds and moves the images to a single movie directory
# Craig Earley

#!/bin/bash

find -name '*.jpg' | # find jpegs
gawk 'BEGIN{ a=1 }{ printf "mv %s movie/%08d.jpg\n", $0, a++ }' | # build mv command
bash # run that command
