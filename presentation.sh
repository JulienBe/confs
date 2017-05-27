#!/bin/bash

ehco "$1"
clear; sleep 1; figlet "$1" | lolcat -a --duration=10 --speed=15
