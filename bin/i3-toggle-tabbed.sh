#!/bin/bash

if ! `which jq >/dev/null 2>&1`; then
     echo "Need to install jq"
     exit 1
fi
layout=$(i3-save-tree | grep -v '\/\/' | jq .nodes[0].layout | sed -e 's/^"//;s/"$//')
echo $layout

if [ "$layout" == "null" ]; then
     layout=$(i3-save-tree | grep -v '\/\/' | jq .layout | sed -e 's/^"//;s/"$//')
     echo $layout
fi

if [ "$layout" == "tabbed" ]; then
     echo "switching to default"
     i3 layout default
else
     echo "switching to tabbed"
     i3 layout tabbed
fi
