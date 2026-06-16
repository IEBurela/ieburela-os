#!/bin/bash
# Script para automatizar la creación del contenedor BricsCAD en Distrobox

set -e

CONTAINER_NAME="cad-env"
IMAGE_TAG="ghcr.io/ieburela/ubuntu-bricscad:22.04"

echo "============================================================"
echo " Descargando imagen base inmutable de BricsCAD desde GitHub..."
echo "============================================================"
# Descargar la imagen pre-compilada y versionada
podman pull $IMAGE_TAG

echo "============================================================"
echo " Creando contenedor en Distrobox..."
echo "============================================================"
# Verificar si el contenedor ya existe
if distrobox list | grep -q "$CONTAINER_NAME"; then
    echo "El contenedor $CONTAINER_NAME ya existe. Recreándolo..."
    distrobox rm -f $CONTAINER_NAME
fi

# Crear el contenedor de manera no interactiva
distrobox create --name $CONTAINER_NAME --image $IMAGE_TAG --yes

echo "============================================================"
echo " ¡Contenedor $CONTAINER_NAME creado exitosamente!"
echo "============================================================"
echo "Instrucciones para instalar BricsCAD:"
echo "1. Ingresa al contenedor corriendo:"
echo "   distrobox enter $CONTAINER_NAME"
echo ""
echo "2. Navega a donde tengas guardado tu instalador:"
echo "   cd /ruta/a/tu/instalador"
echo ""
echo "3. Instala el paquete deb (esto instalará tu .deb y configurará todo):"
echo "   sudo apt install ./BricsCAD-*.deb"
echo ""
echo "4. Exporta la aplicación para que aparezca en tu menú de inicio de Fedora:"
echo "   distrobox-export --app bricscad"
echo "============================================================"
