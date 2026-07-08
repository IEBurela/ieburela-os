FROM ubuntu:22.04

# Evitar prompts interactivos durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualizar repositorios e instalar dependencias necesarias para BricsCAD y utilidades base
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    sudo \
    libgl1-mesa-glx \
    libegl1-mesa \
    libxrender1 \
    libxext6 \
    libx11-xcb1 \
    libfontconfig1 \
    libnss3 \
    libasound2 \
    libcups2 \
    libdbus-1-3 \
    libexpat1 \
    libxcb-shm0 \
    libxcb-render0 \
    libsm6 \
    libice6 \
    libuuid1 \
    libxcomposite1 \
    libxcursor1 \
    libxdamage1 \
    libxfixes3 \
    libxi6 \
    libxrandr2 \
    libxtst6 \
    pango1.0-tools \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Configurar locales básicos (Ajustado para México como pediste antes)
RUN apt-get update && apt-get install -y locales && \
    locale-gen es_MX.UTF-8 && \
    update-locale LANG=es_MX.UTF-8 LC_ALL=es_MX.UTF-8

ENV LANG=es_MX.UTF-8
ENV LC_ALL=es_MX.UTF-8
