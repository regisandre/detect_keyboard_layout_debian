#!/bin/bash

###################################################################
# Script Name	: Detect the keyboard layout on Debian | detect_keyboard_layout.sh
# Description	: The French and Belgians use the Ctrl + Alt + Key key combination in addition to AltGr + Key to write @, #, etc.
#				  I am currently trying to find a solution not to use AutoKey, but a function that would be directly integrated into the system.
#				  So I need a program that detects when you enter a key combination to imitate another.
#				  With a Belgian keyboard: Ctrl + Alt + 2 (é) corresponds to AltGr + 2 (é) and create an @.
#                 This script can be added to Ubuntu Startup Applications with a delayed start of a few seconds.
#                 Tested with Linux Mint 20.1 on Dell Latitude 5400, Dell Latitude 5500, Asus UX410U, Asus Pro P5440FA, HP EliteBook 845 G7.
# Args          : 
# Parameters	: 
# Author	   	: Régis "Sioxox" André
# Email	    	: pro@regisandre.be
# Website		: https://regisandre.be
# Github		: https://github.com/regisandre
###################################################################

# How to install xkblayout-state
# cd /usr/local/bin
# git clone git@github.com:nonpop/xkblayout-state.git
# cd xkblayout-state/
# make


sleep 2

if [[ $(xkblayout-state print %s) == "be" ]]; then
	# Code...
else if[[ $(xkblayout-state print %s) == "fr" ]]; then
	# Code...
fi