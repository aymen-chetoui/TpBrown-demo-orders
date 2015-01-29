#!/usr/bin/env bash
echo '(pseudo build script.  Pass any parameter to fail.)'
rm -f artifact.txt
echo $GO_PIPELINE_NAME build $GO_PIPELINE_LABEL triggered
echo COMPILE..
echo UNIT TEST...
echo ${GO_PIPELINE_NAME}-${GO_PIPELINE_LABEL}-${GO_STAGE_COUNTER}>artifact.txt
if [ -z "$1" ]
then
   exit 0
fi
exit 1
