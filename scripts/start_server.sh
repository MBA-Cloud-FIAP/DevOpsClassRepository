cd /home/ec2-user/app

if pgrep -f "python manage.py runserver"; then
  pkill -f "python manage.py runserver"
fi

nohup python3 manage.py runserver 0.0.0.0:8000 &