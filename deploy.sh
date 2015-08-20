#!/bin/bash
find release -type f -exec sh -c '"$0" "$@" &' curl -u $DEPLOYMENT_FTP_USER:$DEPLOYMENT_FTP_PASS --ftp-create-dirs -T {} ftp://blacksky-dev.com/test/{} \;
wait
echo "Upload finished."
