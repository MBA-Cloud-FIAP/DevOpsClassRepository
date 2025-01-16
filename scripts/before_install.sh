if pgrep -f "python3 app.py"; then
  pkill -f "python3 app.py"
fi

mkdir -p /home/ec2-user/app