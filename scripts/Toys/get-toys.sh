#!/bin/bash

curl ""http://localhost:4741/toys""\
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
