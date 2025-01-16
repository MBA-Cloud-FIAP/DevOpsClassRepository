cd /home/ec2-user/app

if pgrep -f "python3 app.py"; then
  echo "Stopping the running Flask application..."
  pkill -f "python3 app.py"
else
  echo "No running Flask application found."
fi
