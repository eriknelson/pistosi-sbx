# pistosi-sbx

Setup venv

`python -m venv .venv`

Activate

`source .venv/bin/activate`

Install deps

`pip install -r requirements.txt`

## Generating lockfile

Install pip-tools

`python -m pip install pip-tools`

`pip-compile -r requirements.in`
