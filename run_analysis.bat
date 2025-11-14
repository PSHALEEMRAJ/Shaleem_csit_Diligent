@echo off
REM Set environment variable INSTALL=1 to install requirements before running
if "%INSTALL%"=="1" (
  py -3.11 -m pip install --upgrade pip setuptools wheel
  py -3.11 -m pip install -r requirements.txt
)
py -3.11 analyze_data.py
pause
