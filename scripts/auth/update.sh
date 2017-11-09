TOKEN="BAhJIiUzMWE4N2QyMzBhOWI5ZjMyNmU1OTQyOGIxNDhiMjBiMAY6BkVG--dcaef9ef6a9d723008f89c70ebce5be740303fc9"
curl --include --request PATCH "http://localhost:4741/users/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "user": {
      "propic": "'"${PROPIC}"'"
    }
  }'
