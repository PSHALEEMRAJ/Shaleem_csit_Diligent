Run instructions

This project ships with a small analysis script `analyze_data.py` that reads `ecom.db` and
creates `sales_by_city.png`.

Quick run (uses the Python launcher and Python 3.11):

```powershell
py -3.11 -m pip install --upgrade pip setuptools wheel
py -3.11 -m pip install -r requirements.txt
py -3.11 analyze_data.py
```

Convenience scripts added:

- `run_analysis.ps1` — PowerShell script. Use `-Install` to install requirements first.
  Example: `./run_analysis.ps1 -Install`

- `run_analysis.bat` — Windows batch file. Set `INSTALL=1` before running to install deps:
  Example: `set INSTALL=1 & run_analysis.bat`

Notes:
- If you prefer conda, create an environment and install the listed packages instead.
- The analysis expects `ecom.db` in the project root. The generated image is saved as `sales_by_city.png`.
