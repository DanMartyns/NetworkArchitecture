#!/bin/bash
for i in (1..9)
do
	model = 'snmpget -v2c -c myrouter 192.1.1.$i SNMPv2-SMI::mib-2.47.1.1.1.1.2.1 | cut -d"\"" -f2'
	if [ -n "$model" ]
	then
		fwver = 'snmpget -v2c -c myrouter 192.1.1.$i SNMPv2-MIB::sysDescr.0 | head -n1 | cut -d"," -f2,3'
	echo "Router 192.1.1.$i, $model, $fwyer"
	fi
done