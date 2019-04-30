#!/bin/bash

if [ $# -lt 1 ]; then
	echo "release-ios.sh NEW_MARKETING_VERSION"
	exit
fi


NEW_MARKETING_VERSION=$1
NEW_BUILD_VERSION=$(date +%Y%m%d%H%M)

agvtool  new-marketing-version ${NEW_MARKETING_VERSION}
agvtool  new-version -all  ${NEW_BUILD_VERSION}




