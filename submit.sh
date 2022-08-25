#!/bin/bash

EX_NAME=$1

if [[ ( $1 == "--help") ||  ($1 == "-h") || ("$#" -ne 1 ) ]]
then
	echo "Error creating submission zip. Make sure you run the following command: $0 exYY, where YY is the
	2-digit exercise number"
	exit 0
fi

rm -r -f ${EX_NAME}_submission.zip
cd assignments
zip -r ../${EX_NAME}_submission.zip src/${EX_NAME}/*.java

