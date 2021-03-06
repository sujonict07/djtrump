#!/bin/sh

sshpass -p jen ssh -o StrictHostKeyChecking=no jen@192.168.100.249 /bin/bash <<EOF
  cd djtrump
  git pull
  source /home/jen/env/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  ./manage.py runserver 0.0.0.0:8100 &
  exit
EOF
