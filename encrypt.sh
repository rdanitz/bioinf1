#!/bin/sh

for i in src/*.{clj,jl}
do
  gpg --yes --quiet --symmetric --cipher-algo AES256 --passphrase-file secret.txt $i
done
