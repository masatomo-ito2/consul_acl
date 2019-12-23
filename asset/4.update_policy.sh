#!/bin/bash

#if [ $# -eq 0 ]
#	then
#		echo 'Needs to supply argument'
#		echo '  $1 = <arg>'
#		exit 1
#fi

consul acl policy update -name general-token -description Default agent policy -rules @general_policy.hcl 
