#!/bin/bash
# mpm.sh
#
# Meteor Project Manager is a script utility to help during Meteor Application 
# Development.
#
#################################################################################

source contrib/.mpmconfig/.mtrconfig.cfg
source .mpm/.functions.cfg
source .mpm/.actions.cfg

LOOP=1
while [ $LOOP -gt 0 ]; do
	if [ $# -eq 1 ]
  	then
    	ACTION="$1"
    	LOOP=0
	else
		echo -e "$COLOR_INFO"
		echo -e "Welcome in the Meteor Project Manager ! What do you want to do ? $COLOR_NORMAL"
		read ACTION
	fi
	if isActionCreate $ACTION
	then
		create
	fi
	if isActionRun $ACTION
	then
		run
	fi
	if isActionReset $ACTION
	then
		reset
	fi
	if isActionUpdate $ACTION
	then
		update
	fi
	if isActionList $ACTION
	then
		list
	fi
	if isActionLogin $ACTION
	then
		login
	fi
	if isActionLogout $ACTION
	then
		logout
	fi
	if isActionPackage $ACTION
	then
		package
	fi
	if isActionPlatform $ACTION
	then
		platform
	fi
	if isActionClear $ACTION
	then
		clear
	fi
	if isActionKill $ACTION
	then
		kill
	fi
	if isActionExit $ACTION
	then
		LOOP=0
	fi
done