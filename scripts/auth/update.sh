TOKEN="BAhJIiVmZWVhODhmMmZmMzlkNTA1OGQxNWFlMWMzY2M0ZTQ3MAY6BkVG--79835cfcb04b696af3485e46e2aeeeb9537bfbca"
curl --include --request PATCH "http://localhost:4741/users/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "credentials": {
      "username": "'"${USERNAME}"'"
    }
  }'
