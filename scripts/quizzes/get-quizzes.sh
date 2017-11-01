#!/bin/bash
TOKEN="BAhJIiU1YjVlNDhlZjU2NmIxYmU2YjFiNDllNDZkYmJlNDhiZQY6BkVG--7305328323cc6e3d9337e374123003b2dfadeb3f"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/quizzes"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
