@echo off

REM This script was created by Nguyen Thai Minh.
REM Usage rights belong to Soaru CloudSystem, a subsidiary of HiTECH Corporation.
REM Copyright (c) Soaru CloudSystem 2025.

mkdir "C:\Program Files\SCS Notification"
curl -O C:\Program Files\SCS Notification\SCS-Notification.exe https://raw.githubusercontent.com/thaiminh0911/scs-data/refs/heads/main/Windows%2011/SCS-Notification.exe
icacls "C:\Program Files\SCS Notification" /deny Everyone:(DE,DC)
REG ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /V "SCSNotification" /t REG_SZ /F /D "C:\Program Files\SCS Notification\SCS-Notification.exe"

echo Done.
pause