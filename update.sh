#!/bin/bash

REP="/home/runner/${REPL_SLUG}"
mkdir -p ${REP}/.include

# replit files
REMOTE="https://raw.githubusercontent.com/senapk/replit2/master"

wget -nv ${REMOTE}/Readme.md  -O ${REP}/Readme.md
wget -nv ${REMOTE}/replit.nix -O ${REP}/replit.nix
wget -nv ${REMOTE}/replit     -O ${REP}/.replit
wget -nv ${REMOTE}/update.sh  -O ${REP}/venv/bin/update.sh
chmod +x ${REP}/.bin/update.sh

# baixando tk
TKREMOTE="https://raw.githubusercontent.com/senapk/tk/master"
tk=${REP}/venv/bin/tk.py
wget -nv ${TKREMOTE}/tk.py -O $tk
chmod +x $tk

# baixando aux
aux=${REP}/.include/aux.hpp
wget -nv https://raw.githubusercontent.com/senapk/cppaux/master/aux.hpp -O $aux



