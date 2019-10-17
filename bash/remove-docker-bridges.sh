#!/bin/bash

ifconfig | awk '{print $1}'| sed 's/://' | grep 'br' | xargs -n1 sudo ip link delete
