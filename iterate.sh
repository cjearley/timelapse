# tar all of every directory
# Craig Earley
# December 2015

#!/bin/bash

for dir in * ; do
	tar -cvzf $dir.tar.gz $dir/*.jpg
done 

