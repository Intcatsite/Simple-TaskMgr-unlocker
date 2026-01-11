@echo off
title EMERGENCY REPAIR
color 0B
chcp 1251 >nul

echo [!] Simple TaskMgr unlocker 1A.11

powershell -Command "Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableTaskMgr' -ErrorAction SilentlyContinue"
powershell -Command "Remove-ItemProperty -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableTaskMgr' -ErrorAction SilentlyContinue"

powershell -Command "Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableRegistryTools' -ErrorAction SilentlyContinue"

powershell -Command "Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'DisableCMD' -ErrorAction SilentlyContinue"

echo.
echo [ OK ] successfully ✔.
pause
