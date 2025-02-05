#!/bin/bash

git checkout v3.3.3
mkdir dbuild
cd dbuild
cmake -DATCA_PKCS11:STRING=ON -DATCA_HAL_I2C=ON -DATCA_PKCS11=ON -DATCA_OPENSSL=ON -DATCA_TNGTLS_SUPPORT=ON -DBUILD_TESTS=ON ..
make
git checkout main
