#!/usr/bin/env bash

# Search bash.bashrc system file for existence of en_US.UTF-8
# string, and count (wc -l) the number of occurrences.
num=`grep "en_US.UTF-8" /etc/bash.bashrc | wc -l`;

# If the string never occurs, then we know to append.
if [ $num -eq 0 ]; then
	echo "" >> /etc/bash.bashrc;
	echo "LANGUAGE=en_US.UTF-8" >> /etc/bash.bashrc;
	echo "LANG=en_US.UTF-8" >> /etc/bash.bashrc;
	echo "LC_ALL=en_US.UTF-8" >> /etc/bash.bashrc;

	# run sys config resetup
	locale-gen en_US.UTF-8;
	dpkg-reconfigure locales;
fi