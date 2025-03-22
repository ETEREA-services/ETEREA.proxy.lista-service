FROM nginx:latest

# Instalar gettext-base para usar envsubst
RUN apt-get update && apt-get install -y gettext-base

# Copiar el template de configuración
COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.sh

# Hacer ejecutable el script de entrada
RUN chmod +x /docker-entrypoint.sh

# Exponer el puerto 80
EXPOSE 80

# Definir el punto de entrada y el comando por defecto
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]