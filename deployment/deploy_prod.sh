#!/bin/sh

ssh -o StrictHostKeyChecking=no jen@192.168.100.249 /bin/bash <<EOF
  cd djtrump
  git pull
  source /home/jen/env/bin/pip/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
