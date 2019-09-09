#!/bin/bash

curl "http://localhost:4741/expenses/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "expense": {
      "amount": "'"${AMOUNT}"'",
      "currency": "'"${CURRENCY}"'",
      "description": "'"${DESCRIPTION}"'",
      "transaction_date": "'"${TRANSACTION_DATE}"'"
    }
  }'

echo
