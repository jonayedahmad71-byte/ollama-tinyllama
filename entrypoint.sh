#!/bin/sh

echo "Starting Ollama server..."

# মডেল ডাউনলোড করুন (প্রথমে)
echo "Pulling model: tinyllama"
ollama pull tinyllama

# তারপর সার্ভার চালু করুন
echo "Starting Ollama server..."
exec ollama serve
