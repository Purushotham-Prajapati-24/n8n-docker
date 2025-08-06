FROM n8nio/n8n

ENV GENERIC_TIMEZONE=Asia/Kolkata
ENV N8N_PORT=${PORT}
ENV N8N_PROTOCOL=https
ENV N8N_HOST=0.0.0.0
ENV WEBHOOK_TUNNEL_URL=https://n8n-thzz.onrender.com

EXPOSE ${PORT}

CMD ["n8n", "start"]
