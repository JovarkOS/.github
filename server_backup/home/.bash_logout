# Send webhook message to discord server on login
curl -s -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"User \`$(whoami)\` logout at \`$(date)\`.\"}" <webhook url redacted> >> /dev/null
