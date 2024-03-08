#!/bin/bash

userdata=`tail -n 5 /etc/passwd |grep demo2|cut -d":" -f1`
user=demo2
if [ $userdata == $user ]
then
	echo "user $user exists"
else
	echo "user $user need to add"
fi
