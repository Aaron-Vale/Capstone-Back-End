TOKEN="BAhJIiVkNjExMWE3OWMzMTI2YzEyMzcxN2QwNmRhZWJhMWVhYwY6BkVG--514df49f74a94d8b13b45bcd3ee31d94394fa277"
curl --include --request PATCH "http://localhost:4741/quizzes/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "quiz": {
      "title": "'"${TITLE}"'",
      "category": "'"${CATEGORY}"'"
    }
  }'
