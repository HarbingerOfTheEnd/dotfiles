#!/usr/bin/bash

details=$(curl https://ipapi.co/json/)

lat=$(echo $details | jq '.latitude')
lon=$(echo $details | jq '.longitude')

wlsunset -l $lat -L $lon
