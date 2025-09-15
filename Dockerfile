FROM ollama/ollama

# সার্ভার চালাবে
RUN ollama serve &

# মডেল ডাউনসোড সরো
RUN sleep 10 && ollama pull tinyllama

EXPOSE 11434
CMD ["ollama", "serve"]
