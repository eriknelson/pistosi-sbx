# pistosi-sbx

Setup venv

`python -m venv .venv`

Activate

`source .venv/bin/activate`

Install deps

`pip install -r requirements.txt`

Ensure `.env` file is where django will expect to find it (`src/.env`).
The docker-compose will read this using the symlink from the toplevel dir.
It uses a symlink because I didn't want to mount in the entire root into the
container, so the real `.env` file lives in `src`.

`cd src && cp env.example .env`

## Generating lockfile

Install pip-tools

`python -m pip install pip-tools`

`pip-compile -r requirements.in`
