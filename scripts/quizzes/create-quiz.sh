TOKEN="BAhJIiU1YjVlNDhlZjU2NmIxYmU2YjFiNDllNDZkYmJlNDhiZQY6BkVG--7305328323cc6e3d9337e374123003b2dfadeb3f"
curl --include --request POST "http://localhost:4741/quizzes/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quiz": {
      "title": "'"${TITLE}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'
