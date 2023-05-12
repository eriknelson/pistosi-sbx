#!/bin/bash
_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export POSTGRES_HOST=localhost
$_dir/../src/manage.py $@
