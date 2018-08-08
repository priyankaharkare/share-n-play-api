#!/bin/bash

curl "http://localhost:4741/toys_users/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "toys_user": {
      "user_id": "'"${USER_ID}"'",
      "toy_id": "'"${TOY_ID}"'"
        }
  }'

echo
