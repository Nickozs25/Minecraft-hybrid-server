output "instance_public_ip" {
  description = "IP pública del servidor Minecraft EC2"
  value       = aws_instance.minecraft_server.public_ip
}

output "instance_id" {
  description = "ID de la instancia EC2 desplegada"
  value       = aws_instance.minecraft_server.id
}