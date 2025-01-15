cd /home/ec2-user/app

if pgrep -f "python3 app.py"; then
  pkill -f "python3 app.py"
fi

nohup python3 app.py > flask.log 2>&1 &