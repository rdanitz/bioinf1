#!/bin/sh

for i in src/*.gpg
do
  src=$(echo $i | sed -e 's/.gpg$//g')
  gpg --yes --quiet --decrypt --cipher-algo AES256 --passphrase-file secret.txt --output $src $i
done
