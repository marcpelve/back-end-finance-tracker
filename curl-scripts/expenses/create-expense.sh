#!/bin/bash

curl "http://localhost:4741/expenses" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "expense": {
      "amount": "'"${AMOUNT}"'",
      "currency": "'"${CURRENCY}"'",
      "description": "'"${DESCRIPTION}"'",
      "transaction_date": "'"${TRANSACTION_DATE}"'"
    }
  }'

echo
