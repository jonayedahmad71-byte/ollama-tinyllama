FROM ollama/ollama

# Start server & pull tinyllama
CMD ["sh", "-c", "ollama serve & sleep 10 && ollama pull tinyllama && wait"]
