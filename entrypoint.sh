#!/bin/bash
set -e

# Render এর PORT environment variable ব্যবহার করবো
PORT=${PORT:-11434}

echo "🚀 Starting Ollama server on 0.0.0.0:$PORT ..."

# Ollama server চালু করো
ollama serve --host 0.0.0.0 --port $PORT
