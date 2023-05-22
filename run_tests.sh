#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

if [ -d "dbuild" ]
then
    echo "cryptoauth_test sernum"
    ./dbuild/cryptoauth_test sernum -d ecc608 -i i2c 1
    echo "cryptoauth_test info"
    ./dbuild/cryptoauth_test info -d ecc608 -i i2c 1
    echo "cryptoauth_test rand"
    ./dbuild/cryptoauth_test rand -d ecc608 -i i2c 1
    echo "cryptoauth_test cd"
    ./dbuild/cryptoauth_test cd -d ecc608 -i i2c 1
    echo "cryptoauth_test util"
    ./dbuild/cryptoauth_test util -d ecc608 -i i2c 1
    echo "cryptoauth_test basic"
    ./dbuild/cryptoauth_test basic -d ecc608 -i i2c 1
    echo "cryptoauth_test cio"
    ./dbuild/cryptoauth_test cio -d ecc608 -i i2c 1
    echo "cryptoauth_test crypto"
    ./dbuild/cryptoauth_test crypto -d ecc608 -i i2c 1
    echo "cryptoauth_test crypto_int"
    ./dbuild/cryptoauth_test crypto_int -d ecc608 -i i2c 1
    echo "cryptoauth_test pbkdf2"
    ./dbuild/cryptoauth_test pbkdf2 -d ecc608 -i i2c 1
else
    echo "Error: Directory "dbuild" does not exists."
fi
