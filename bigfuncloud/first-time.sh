#!/bin/bash

set -ex

direnv allow
eval "$(direnv export bash)"

pip3 install -r ./requirements.txt

django-admin startproject @BFC_PYTHON_IDENTIFIER@ .
django-admin startapp friends

mv ./overlay/project/* ./@BFC_PYTHON_IDENTIFIER@
mv ./overlay/friends/* ./friends
rm -rf ./overlay

./manage.py makemigrations
./manage.py migrate
