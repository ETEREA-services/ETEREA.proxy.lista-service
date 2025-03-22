#!/bin/sh

# Establecer valores por defecto si no están definidos
: ${NGINX_PORT:=80}
: ${FRONTEND_PORT:=5173}
: ${GATEWAY_PORT:=8052}

# Reemplazar variables en el template
envsubst '${NGINX_PORT} ${FRONTEND_PORT} ${GATEWAY_PORT}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Ejecutar el comando original de nginx
exec "$@" 