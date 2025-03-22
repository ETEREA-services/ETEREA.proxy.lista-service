# ETEREA.proxy.lista-service

## Descripción

Este proyecto configura un servicio proxy utilizando Nginx. El servicio está diseñado para ser desplegado en un contenedor Docker y puede ser configurado dinámicamente utilizando variables de entorno.

## Estructura del Proyecto

- `docker-entrypoint.sh`: Script de entrada que configura Nginx antes de iniciar el servicio.
- `Dockerfile`: Archivo Docker para construir la imagen del contenedor.
- `Dockerfile.local`: Versión local del Dockerfile para desarrollo.
- `nginx.conf`: Archivo de configuración de Nginx.
- `nginx.conf.template`: Plantilla de configuración de Nginx que utiliza variables de entorno.
- `README.md`: Este archivo.

## Requisitos

- Docker
- GitHub Actions (para CI/CD)

## Uso

### Construcción de la Imagen Docker

Para construir la imagen Docker, ejecute el siguiente comando en el directorio del proyecto:

```sh
docker build -t eterea-proxy-lista-service .
```

### Ejecución del Contenedor

Para ejecutar el contenedor, utilice el siguiente comando:

```sh
docker run -p 80:80 eterea-proxy-lista-service
```

### Variables de Entorno

El archivo `nginx.conf.template` utiliza `envsubst` para reemplazar variables de entorno. Asegúrese de definir las variables necesarias antes de ejecutar el contenedor.

### GitHub Actions

Este proyecto está configurado para ser desplegado utilizando GitHub Actions. Asegúrese de tener un archivo de flujo de trabajo configurado en `.github/workflows`.

## Contribución

Las contribuciones son bienvenidas. Por favor, siga los siguientes pasos:

1. Haga un fork del repositorio.
2. Cree una nueva rama (`git checkout -b feature/nueva-funcionalidad`).
3. Realice los cambios necesarios y haga commit (`git commit -am 'Añadir nueva funcionalidad'`).
4. Empuje los cambios a la rama (`git push origin feature/nueva-funcionalidad`).
5. Cree un Pull Request.

## Licencia

Este proyecto está licenciado bajo la Licencia MIT. Consulte el archivo `LICENSE` para más detalles.