variable "aws_region" {
  default     = "us-east-1"
  description = "Región AWS para el despliegue"
}

variable "aws_ami" {
  default     = "ami-0c2b8ca1dad447f8a"
  description = "Amazon Linux 2 compatible con Docker"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Instancia EC2 en capa gratuita"
}

variable "key_pair_name" {
  description = "Nombre del key pair en AWS"
}

variable "public_key_path" {
  description = "Ruta al archivo de clave pública local"
}