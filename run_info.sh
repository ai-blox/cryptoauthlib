#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ -d "dbuild" ]
then
    ./dbuild/cryptoauth_test info -d ecc608 -i i2c 1
else
    echo "Error: Directory "dbuild" does not exists."
fi
