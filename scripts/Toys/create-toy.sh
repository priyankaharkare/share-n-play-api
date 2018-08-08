#!/bin/bash

curl "http://localhost:4741/toys" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "toy": {
      "name": "'"${NAME}"'",
      "description": "'"${DESCRIBE}"'",
      "is_available": "'"${AVAILABLE}"'"
    }
  }'

echo
