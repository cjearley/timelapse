#!/bin/bash
#written by: Maduna, adapted by charliep, Craig Earley & Ivan
# Captures what the camera at a given URL or IP is currently viewing and saves it
# - Craig

# DOWNLOAD IMAGE 
/usr/local/bin/wget --user=yourUser --password=yourPassword -qP  /path/to/dir http://your.webcam.page/path/to/image.cgi
 
sleep 5

# RENAME IMAGE
/bin/mv /path/to/dir/image.cgi /path/to/dir/image.jpg

sleep 5

# COPY IMAGE TO WWW
sleep 5
cp /path/to/dir/image.jpg /path/to/web/dir/.

# archive image (see other scripts)
/usr/bin/perl /path/to/dir/archiveImage.pl
