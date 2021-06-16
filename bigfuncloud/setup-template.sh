#!/bin/bash

SECRET=$(python -c "import secrets; print(secrets.token_urlsafe())")
echo "DJANGO_SECRET_KEY=\"$SECRET\"" > .envrc.secret
