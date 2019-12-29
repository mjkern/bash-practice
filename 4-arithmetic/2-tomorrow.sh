#!/bin/bash

echo "tommorow's date is:"
date -d @$(( $(date +%s) + (60 * 60 * 24) ))
