#!/bin/bash

WEBUI_PATTERN='lead_manager_react_django/apps/webui'

if git diff --name-only | grep -q $WEBUI_PATTERN; then
    echo 'found match'
    yarn run validate:src
    exit 0
else 
    echo 'no match'
    exit 0
fi