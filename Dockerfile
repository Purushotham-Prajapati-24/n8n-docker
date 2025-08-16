# minimal, stable, Render-friendly
FROM n8nio/n8n:latest

# optional timezone
ENV GENERIC_TIMEZONE=Asia/Kolkata

# security: set a default encryption key (change for production!)
ENV N8N_ENCRYPTION_KEY=change_this_to_a_strong_secret_key

# make sure Render can route to n8n
ENV N8N_HOST=0.0.0.0
ENV N8N_PROTOCOL=http
ENV N8N_PORT=5678

# webhook settings (important for advanced workflows)
ENV N8N_EDITOR_BASE_URL=http://localhost:5678

ENV N8N_PUBLIC_API_DISABLED=false

# database settings (safe defaults, can be overridden in Render Dashboard)
ENV DB_TYPE=sqlite
ENV DB_SQLITE_VACUUM_ON_STARTUP=true

# mountable storage (for persistence)
VOLUME /home/node/.n8n

# n8n listens on 5678
EXPOSE 5678

# start n8n
CMD ["n8n", "start"]
