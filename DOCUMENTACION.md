

##  `DOCUMENTACION.md`

```markdown
# Documentación Técnica — Minecraft Hybrid Server

## Terraform (Carpeta `terraform-aws`)

- `main.tf`: Define recursos AWS, incluyendo EC2 y Security Groups.
- `variables.tf`: Contiene variables para configurar región, tipo de instancia, clave SSH, etc.
- `terraform.tfvars`: Valores personalizados para las variables.
- `outputs.tf`: Muestra la IP pública y el ID de la instancia.

##  Servidor local (Carpeta `local-server`)

- `docker-compose.yml`: Levanta el servidor Minecraft en tu PC local usando la imagen de Itzg.
- `monitoreo.py`: Script que detecta uso excesivo de CPU y activa la transición al servidor remoto.

##  Scripts

- `trigger_aws_launch.sh`: Inicializa y aplica Terraform para desplegar EC2 automáticamente.

##  Diagrama

El diagrama `arquitectura.png` representa el flujo de decisión entre mantener el servidor local y escalar a la nube.

##  Posibles mejoras futuras

- Integrar CloudWatch para autoescalado real.
- Usar DNS dinámico para redirección automática.
- Agregar persistencia de mundo Minecraft entre entornos.

---

