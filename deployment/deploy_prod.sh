#!/bin/sh
#root@104.236.57.112 <<EOF
ssh -i ~/.ssh/JadeSshKey Jadedh@10.195.149.19 <<EOF
  cd djtrump
  git pull
  source /opt/envs/djtrump/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart djtrump
  exit
EOF
