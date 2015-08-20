#!/bin/bash
find release -type f -exec curl -u $DEPLOYMENT_FTP_USER:$DEPLOYMENT_FTP_PASS --ftp-create-dirs -T {} ftp://blacksky-dev.com/test/{} \;
