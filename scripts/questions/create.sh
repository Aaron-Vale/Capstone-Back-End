TOKEN="BAhJIiU1YjVlNDhlZjU2NmIxYmU2YjFiNDllNDZkYmJlNDhiZQY6BkVG--7305328323cc6e3d9337e374123003b2dfadeb3f"
curl --include --request POST "http://localhost:4741/questions/" \
  --header 'Content-Type: application/json' \
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
