#!/bin/bash

eval "$(direnv export bash)"

watchexec -r -- "invalidate-devserver; ./manage.py runserver 80"
