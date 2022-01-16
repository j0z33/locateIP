#!/bin/bash
ip=$1
if [ ! $ip ];then
	echo -e "\nModo de empleo:\n"
	echo -e "\n.\locateIP.sh <DIRECCION_IP>"
	exit 1
fi
curl -s http://api.db-ip.com/v2/free/$ip
pais=$(curl -s http://api.db-ip.com/v2/free/$ip/countryName/)
provincia=$(curl -s http://api.db-ip.com/v2/free/$ip/stateProv/)
ciudad=$(curl -s http://api.db-ip.com/v2/free/$ip/city/)
echo -e "\n\nPaís: $pais"
echo -e "\nProvincia: $provincia"
echo -e "\nCiudad: $ciudad"
echo
