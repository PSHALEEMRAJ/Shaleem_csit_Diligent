<#
Run analysis script with optional install flag.
Usage:
  .\run_analysis.ps1         # runs analyze_data.py
  .\run_analysis.ps1 -Install # installs requirements using Python 3.11 then runs
#>
param([switch]$Install)

if ($Install) {
    Write-Host "Installing requirements with Python 3.11..."
    py -3.11 -m pip install --upgrade pip setuptools wheel
    py -3.11 -m pip install -r requirements.txt
}

Write-Host "Running analyze_data.py with Python 3.11..."
py -3.11 analyze_data.py
