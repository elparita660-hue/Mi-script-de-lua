import os
import time
import random

def reduce_fps(device_id):
    # Comando ADB para conectar al dispositivo
    os.system(f'adb connect {device_id}')

    # Comando ADB para cambiar la configuración de FPS
    os.system(f'adb -s {device_id} shell settings put system screen_off_timeout 1')

    # Simular una carga alta en el CPU
    while True:
        # Generar un número aleatorio para simular carga
        _ = random.random()
        time.sleep(0.1)

if __name__ == "__main__":
    # Lista de IDs de dispositivos a los que deseas afectar
    target_devices = ['device1_id', 'device2_id', 'device3_id']

    for device in target_devices:
        reduce_fps(device)
