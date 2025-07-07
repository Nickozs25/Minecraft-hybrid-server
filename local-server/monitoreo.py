import psutil
import os

CPU_LIMIT = 80

cpu = psutil.cpu_percent(interval=2)
if cpu > CPU_LIMIT:
    print("Carga alta detectada. Iniciando instancia EC2 remota.")
    os.system("powershell scripts\\trigger_aws_launch.ps1")
else:
    print(f"CPU OK ({cpu}%)")