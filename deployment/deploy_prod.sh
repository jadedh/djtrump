#!/bin/sh
#root@104.236.57.112 <<EOF
ssh -i ~/.ssh/JadeSshKey ubuntu@128.31.26.110 <<EOF
  cd djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
