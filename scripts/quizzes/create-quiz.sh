TOKEN="BAhJIiUzNmE4NDI3ZGNiYTRiNDE3ZGJmZDkzNzI4M2M5NGYzNQY6BkVG--fbea8f202c50138a010385fd46b214f782e14909"
curl --include --request POST "http://localhost:4741/quizzes/" \
  --header 'Content-Type: application/json' \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quiz": {
      "title": "'"${TITLE}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'
