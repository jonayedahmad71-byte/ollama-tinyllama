#!/bin/sh

echo "Starting Ollama server..."

# Ollama সার্ভার ব্যাকগ্রাউন্ডে চালু করুন
ollama serve &

# সার্ভার চালু হওয়ার জন্য অপেক্ষা করুন
sleep 5

# TinyLlama মডেল ডাউনলোড করুন
echo "Pulling model: tinyllama"
ollama pull tinyllama

echo "Model downloaded. Starting Ollama server in foreground..."

# সার্ভার ফরগ্রাউন্ডে চালানো — কন্টেইনার চালু রাখতে
exec ollama serve
