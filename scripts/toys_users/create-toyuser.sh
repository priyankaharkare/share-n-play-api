#!/bin/bash

curl "http://localhost:4741/toys_users" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "toys_user": {
      "user_id": "'"${USER_ID}"'",
      "toy_id": "'"${TOY_ID}"'"
        }
  }'

echo
