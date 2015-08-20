#!/bin/bash
ftpsync -l ./release -r test -h blacksky-dev.com -p 21 -u $DEPLOYMENT_FTP_USER -s $DEPLOYMENT_FTP_PASS -c 10
