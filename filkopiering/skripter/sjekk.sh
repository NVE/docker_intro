#!/bin/bash
echo -- Sjekker: filkopiering

docker run --rm -i -d --name filkopiering -p 8080:8080/tcp filkopiering


MAX_RETRIES=50
RETRY_DELAY=0.5  # in seconds

for i in $(seq 1 $MAX_RETRIES); do
    if curl -s http://localhost:8080 > /dev/null; then
        echo "✅ Server is up! Shutting it down 😂"
        docker container stop filkopiering
        exit 0
    fi
    echo "⏳ Waiting for server... attempt $i"
    sleep $RETRY_DELAY
done

echo "❌ Server did not respond after $MAX_RETRIES attempts."
exit 1