#!/usr/bin/env bash
echo $GO_PIPELINE_NAME build $GO_PIPELINE_LABEL triggered
echo COMPILE..
echo UNIT TEST...
echo ${GO_PIPELINE_NAME}-${GO_PIPELINE_LABEL}-${GO_STAGE_COUNTER}>artifact.txt
exit 0