#!/bin/bash

# Version: Fri Dec 11 16:30:10 EST 2015

#**********************************************************************************
#  Script to load all that is needed to run an example/demo version of tranSMART 1.2.4
#**********************************************************************************

# Helper function: check and quit on error
function checkInstallError {
	returnValue=$?
	errorMessage=$1
	if (( $returnValue )); then
		echo "************"
		echo "** $errorMessage"
		echo "************"
	fi
	return $returnValue
}

echo "+  Checks on basic load"
cd $HOME/Scripts/install-ubuntu/checks
./basics.sh
if [ "$( checkInstallError "Some Basic Command-Line Tool is missing" )" ] ; then
    echo "ich"
    exit -1
fi
# check - checkVersions.sh
# check - checkFilesBasic.sh
echo "Finished installing basic tools at $(date)"
exit 0

