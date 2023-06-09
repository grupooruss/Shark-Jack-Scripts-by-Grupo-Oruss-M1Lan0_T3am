#!/bin/bash
# Shark Jack script: Ping Sweep

LED SETUP
# Configurar la interfaz de red en modo estático
NETMODE STATIC
LED ATTACK
# Barrido de ping en la subred local
for ip in $(seq 1 254); do
  ping -c 1 192.168.1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
LED FINISH
