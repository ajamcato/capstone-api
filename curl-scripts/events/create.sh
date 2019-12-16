#!/bin/bash

API="http://localhost:4741"
URL_PATH="/events"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "event": {
      "event_name": "'"${EVENT_NAME}"'",
      "location": "'"${LOCATION}"'",
      "date": "'"${DATE}"'",
      "info": "'"${INFO}"'"
    }
  }'

echo
