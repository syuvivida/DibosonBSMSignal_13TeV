#!/bin/bash

SUFF=lhe
suff=root

for i in $(ls $1)
do
  temp=${i%.$SUFF}.$suff
  outputfile=/data4/syu/13TeV_Diboson`echo "${temp##*Diboson}"`
#  echo $i 
#  echo $outputfile
  cmsRun dumpLHE_cfg.py inputFiles="file:"$i outputFile=$outputfile
done 
