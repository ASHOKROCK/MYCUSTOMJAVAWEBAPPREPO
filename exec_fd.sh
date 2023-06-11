#!/bin/bash
exec 4> /tmp/out.txt
free -m >&4
