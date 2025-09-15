FROM ollama/ollama:latest

# SSH কী তৈরি করুন (Ollama এর জন্য)
RUN mkdir -p /root/.ollama && \
    ssh-keygen -t ed25519 -f /root/.ollama/id_ed25519 -N "" || true

# entrypoint.sh কপি করুন
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 11434

ENTRYPOINT ["/entrypoint.sh"]
