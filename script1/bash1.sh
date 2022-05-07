#!/bin/bash

service=qwerty
[ "$(pidof ${service})" ] && echo Service $service is running || echo Service ${service} is not running!

