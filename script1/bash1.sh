#!/bin/bash

echo -n Enter the name of the service:
read service
if [ "$(pidof ${service})" ]; then
	echo Service $service is running
else
	echo Service ${service} is not running!
	systemctl start $service
	echo Service ${service} has been started
fi
