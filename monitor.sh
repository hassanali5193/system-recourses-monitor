#!/bin/bash

LOG_FILE="monitor.log"
THRESHOLD_CPU=80
THRESHOLD_RAM=500  # in MB
THRESHOLD_DISK=90  # percentage

# Ensure the log file exists
touch $LOG_FILE

echo "[$(date)] Starting system check..." >> $LOG_FILE

# Step 3: CPU Usage Monitoring
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU_USAGE=${CPU_USAGE%.*}

if [ "$CPU_USAGE" -gt "$THRESHOLD_CPU" ]; then
  echo "[$(date)] ALERT: CPU usage is at ${CPU_USAGE}%" >> $LOG_FILE
else
  echo "[$(date)] INFO: CPU usage is at ${CPU_USAGE}%" >> $LOG_FILE
fi

# Step 4: RAM Usage Monitoring
FREE_RAM=$(free -m | awk '/Mem:/ {print $4}')

if [ "$FREE_RAM" -lt "$THRESHOLD_RAM" ]; then
  echo "[$(date)] ALERT: Free RAM is low (${FREE_RAM}MB)" >> $LOG_FILE
else
  echo "[$(date)] INFO: Free RAM is at ${FREE_RAM}MB" >> $LOG_FILE
fi

# Step 5: Disk Usage Monitoring
DISK_USAGE=$(df -h / | grep '/' | awk '{print $5}' | sed 's/%//g')

if [ "$DISK_USAGE" -gt "$THRESHOLD_DISK" ]; then
  echo "[$(date)] ALERT: Disk usage is at ${DISK_USAGE}%" >> $LOG_FILE
else
  echo "[$(date)] INFO: Disk usage is at ${DISK_USAGE}%" >> $LOG_FILE
fi

# (Optional) Send Alerts via Notification (for desktop users)
if [ "$CPU_USAGE" -gt "$THRESHOLD_CPU" ]; then
  notify-send "High CPU Usage" "CPU is at ${CPU_USAGE}%"
fi

# Send email alert if CPU usage is high
if [ "$CPU_USAGE" -gt "$THRESHOLD_CPU" ]; then
  echo "CPU usage is at ${CPU_USAGE}%" | mail -s "System Alert" hassanali5193@email.com
fi
