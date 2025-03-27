import os

# Mostrar el uso de la CPU
print("CPU Usage:")
cpu_usage = os.popen("top -bn1 | grep 'Cpu(s)' | awk '{print \"CPU Load: \" $2 \"%\"}'").read().strip()
print(cpu_usage)