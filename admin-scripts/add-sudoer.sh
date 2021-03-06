#!/bin/bash
# ================================================================== #
# Shell script to add a new sudoer
# ================================================================== #
# Copyright (c) 2012 Matt Thomas http://betweenbrain.com
# This script is licensed under GNU GPL version 2.0 or above
# ================================================================== #
#
read -p "Enter new sudoer username: " SUDOER
#
sudo cp /etc/sudoers /etc/sudoers.tmp
sudo chmod 0640 /etc/sudoers.tmp
echo "$SUDOER   ALL=(ALL) ALL" >> /etc/sudoers.tmp
sudo chmod 0440 /etc/sudoers.tmp
sudo mv /etc/sudoers.tmp /etc/sudoers
#
echo "$SUDOER is now a sudoer"
#

