#!/bin/bash

set -ex

direnv allow
eval "$(direnv export bash)"

pip3 install -r ./requirements.txt

django-admin startproject main .
django-admin startapp friends

mv ./overlay/main/* ./main
mv ./overlay/friends/* ./friends
rm -rf ./overlay

./manage.py makemigrations
./manage.py migrate
