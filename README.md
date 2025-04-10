# System Monitoring Script for Linux

Welcome to the System Monitoring Script repository! This project is designed to monitor key system metrics such as CPU usage, RAM availability, and disk space in Linux systems. The script runs in the background, checking the system's health and sending real-time notifications via email and desktop alerts when thresholds are exceeded.

## 🚀 Project Overview
As a system administrator, IT professional, or someone who enjoys working with Linux, it's crucial to stay on top of system health. This script provides an easy way to automate the monitoring of important system resources. By continuously tracking CPU, RAM, and disk usage, you can receive timely alerts to prevent resource exhaustion and system slowdowns.

This script can be easily customized to suit your system's needs and extended with additional monitoring features as required.

## 🧑‍💻 Key Features
**CPU Usage Monitoring Alert Mechanism:** Sends an alert when CPU usage exceeds the defined threshold.

**Real-Time Updates:** Provides current CPU usage statistics to keep you informed of system load.

**RAM Usage Monitoring Free RAM Tracking:** Notifies you when available RAM is low, ensuring you can take action before the system runs out of memory.

**Threshold Customization:** Set your own thresholds based on your system’s specifications and needs.

**Disk Space Alerts:** Sends warnings when disk usage is critically high (e.g., when free space is below a certain level).

**Easy Customization:** Adjust the disk space threshold as needed for your system’s storage size.

**Automatic Email Alerts:** When CPU usage, RAM usage, or disk space exceeds the defined thresholds, the script sends an email notification.

**Customizable Email:** You can modify the email configuration in the script to send alerts to your desired email address.

Desktop Notifications (Optional)

**Real-Time Alerts:** For those who prefer visual notifications on their desktop, this feature provides pop-up notifications whenever CPU usage exceeds the set threshold.

**Easy Setup:** Uses the notify-send command for quick, native desktop alerts.

## 🛠️ Technologies Used
This project leverages several core Linux tools and Bash scripting techniques:

**Bash Scripting:** The primary language used to create the monitoring script.

**Linux Commands:**

*top:* Retrieves CPU usage statistics.

*free:* Fetches available RAM data.

*df:* Checks disk space usage.

*notify-send:* A tool for generating desktop notifications for users who want immediate alerts on high CPU usage.

*mail Command:* A simple command-line utility for sending emails from the terminal, used here to send resource usage alerts.


## 📈 Why This Script Matters
Monitoring system health is a fundamental skill for anyone in system administration, DevOps, or IT operations. By automating the monitoring of vital system resources, this script helps prevent performance bottlenecks, crashes, or resource exhaustion that could lead to downtime.

In addition to being an important tool for maintaining system stability, writing such scripts is a great way to improve your Bash scripting and automation skills. It also provides a foundation for building more advanced monitoring tools that can be integrated with cloud services and enterprise-level systems.
