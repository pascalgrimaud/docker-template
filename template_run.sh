#!/bin/bash

echo "Starting container : CONTAINER VERSION"


# change the password
if [ ! -f /.password ]; then
	echo "Initializing the user password..."

	# generate password
	PASS=${CONTAINER_PASS:-$(date +%s | sha256sum | base64 | head -c 16 ; echo)}
	# change password
    # ---> put code here
    # touch this file ...
	touch /.password

	echo "Initializing the user password : done!"
fi

# display info
echo ""
echo "######################################################################"
echo "You can now connect to this CONTAINER using :"
echo ""
echo "    <information>"
if [ ! -d ${PASS} ]; then
	echo "    with the password '$PASS'"
	echo ""
	echo "Please remember to change the above password as soon as possible!"
else
	echo "    and enter the password"
fi
echo ""
echo "######################################################################"
echo ""

# start service
# ---> put start service here
