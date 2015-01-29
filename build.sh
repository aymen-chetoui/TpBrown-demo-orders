#!/usr/bin/env bash
echo '(pseudo build script.  Pass any parameter to fail.)'
mkdir -p results
rm -f results/*
artifact_name=${GO_PIPELINE_NAME}-${GO_PIPELINE_LABEL}.${GO_STAGE_COUNTER}.txt
echo $GO_PIPELINE_NAME build $GO_PIPELINE_LABEL triggered
echo COMPILE..
echo UNIT TEST...
echo ${GO_PIPELINE_NAME}-${GO_PIPELINE_LABEL}.${GO_STAGE_COUNTER}(${GO_TO_REVISION})>results/${artifact_name}
if [ -z "$1" ]
then
   cp -f fake-outputs/junit-pass.xml results/junit.xml
   exit 0
fi
cp -f fake-outputs/junit-fail.xml results/junit.xml
exit 1
