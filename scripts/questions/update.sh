TOKEN="BAhJIiVkNjExMWE3OWMzMTI2YzEyMzcxN2QwNmRhZWJhMWVhYwY6BkVG--514df49f74a94d8b13b45bcd3ee31d94394fa277"
curl --include --request PATCH "http://localhost:4741/questions/${ID}" \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "question": {
      "title": "'"${TITLE}"'",
      "answer1": "'"${ANSWER1}"'",
      "answer2": "'"${ANSWER2}"'",
      "answer3": "'"${ANSWER3}"'",
      "answer4": "'"${ANSWER4}"'",
      "correct": "'"${CORRECT}"'",
      "quiz_id": "'"${QUIZ_ID}"'"
    }
  }'
