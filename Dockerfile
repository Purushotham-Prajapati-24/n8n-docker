# minimal, stable, Render-friendly
FROM n8nio/n8n:latest

# optional timezone
ENV GENERIC_TIMEZONE=Asia/Kolkata

# n8n listens on 5678 by default. Render reads EXPOSE to route traffic.
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_PORT=5678

EXPOSE 5678

# start n8n
CMD ["n8n", "start"]
