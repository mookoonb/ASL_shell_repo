#!/bin/bash

function update_team_repo_specs {
	echo "===> Updating repo specs from team ..."
	readonly MY_SPECS_NAME="DTSpecs"
	readonly MY_SPECS_URL="http://192.168.127.69/YY/DTSpecs.git"
	readonly MY_POD_SPECS="$HOME/.cocoapods/repos/$MY_SPECS_NAME"
	if [[ -d $MY_POD_SPECS ]]; then
	    pod repo update $MY_SPECS_NAME
	else
	    pod repo add $MY_SPECS_NAME $MY_SPECS_URL
	fi
	echo "===> Team repo specs is updated."
}

function update_master_repo_specs_if_needed {
	echo "===>Running pod update DT need pod."

	pod update --no-repo-update

	echo "===> pod update done"
}


function execute_pod_install { 
	echo "===> Running pod install"
	pod install
	echo "===> Pod install done."
}


update_team_repo_specs
update_master_repo_specs_if_needed
execute_pod_install

