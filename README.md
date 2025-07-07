#  Minecraft Hybrid Server con Terraform y AWS EC2

Este proyecto permite implementar un servidor de Minecraft híbrido: comienza localmente en tu PC y escala automáticamente hacia AWS EC2 utilizando Terraform cuando se detecta alta carga. Ideal para practicar conceptos de infraestructura como código, automatización, monitoreo y despliegue híbrido usando recursos de la capa gratuita de AWS.

##  Características

- Servidor Minecraft local en Docker.
- Despliegue automático de instancia EC2 en caso de sobrecarga.
- Configuración con Terraform, modular y reutilizable.
- Monitoreo con Python para trigger condicional.
- Diagrama de arquitectura incluido.
- Compatible con GitHub Actions para automatización futura.

##  Tecnologías utilizadas

- Docker
- Terraform
- AWS EC2 (free tier)
- Python (psutil)
- GitHub para control de versiones

##  Estructura del proyecto

minecraft-hybrid-server/
├── README.md
├── local-server/
│   ├── docker-compose.yml
│   └── monitoreo.py
├── terraform-aws/
│   ├── main.tf
│   ├── variables.tf
│   └── terraform.tfvars
├── scripts/
│   └── trigger_aws_launch.sh



##  Requisitos previos

- Cuenta en AWS con acceso a capa gratuita.
- Llave SSH configurada (`~/.ssh/id_rsa.pub`).
- Terraform instalado (`>= 1.0`).
- Docker instalado localmente.

##  Uso

1. Clona este repositorio:
   ```bash
   git clone https://github.com/tu-usuario/minecraft-hybrid-server.git
   cd minecraft-hybrid-server

  1 Inicia el servidor Minecraft local:

     docker-compose -f local-server/docker-compose.yml up -d

  2 Ejecuta el script de monitoreo:

     python3 local-server/monitoreo.py

  3 Si se detecta sobrecarga, se lanza el servidor remoto:

     bash scripts/trigger_aws_launch.sh

  4 Obtén la IP pública de la instancia EC2:

     terraform output instance_public_ip 

     By: Nicolás Izquierdo
