TOKEN="BAhJIiU1ZjNmNzViNzYyODBiOGIyMzAyYzE2ZjBhOTg1M2IwOAY6BkVG--80df83ed225db9fa8b518181fd9d934c6289aefe"
curl --include --request POST "http://localhost:4741/question_responses/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "question_response": {
      "question_id": "'"${QUESTION_ID}"'",
      "user_id": "'"${USER_ID}"'"
    }
  }'
