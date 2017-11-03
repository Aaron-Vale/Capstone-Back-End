TOKEN="BAhJIiVhMzgwYTE1NzA4MDBhYjlhYjAwMzdkYTI5MWI1Y2FhZAY6BkVG--4ebeecceb07362bf7c799de9f9744f4a86ca4aef"
curl --include --request PATCH "http://localhost:4741/users/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "credentials": {
      "score": "'"${SCORE}"'",
      "propic": "'"${PROPIC}"'"
    }
  }'
