#!/usr/bin/env bash
echo $GO_PIPELINE_NAME build $GO_PIPELINE_LABEL triggered
# echo ${GO_PIPELINE_NAME}-${GO_PIPELINE_LABEL}-${GO_STAGE_COUNTER}>artifact.txt
echo Stubbing external dependencies.  
#
# Spawn Montebanc or similar here.  
#
if [ -z "$1" ]
then
   exit 0
fi
exit 1
