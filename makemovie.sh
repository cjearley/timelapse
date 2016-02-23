#!/bin/bash

for file in * ; do
	dir=$(echo $file | rev | cut -f 3- -d '.' | rev)
#	if you have not already tarred every dir:
#	tar -xvzf $dir.tar.gz
	mv $dir/*.jpg new/.
	rmdir $dir/
done

ffmpeg -r 24 -i new/%*.jpg new/output.mp4
#cat movies together
