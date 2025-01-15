from flask import Flask, render_template, request
from datetime import datetime

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    age = None
    if request.method == "POST":
        birth_date_str = request.form.get("birth_date")
        if birth_date_str:
            birth_date = datetime.strptime(birth_date_str, "%Y-%m-%d")
            today = datetime.today()
            age = today.year - birth_date.year - ((today.month, today.day) < (birth_date.month, birth_date.day))
    return render_template("index.html", age=age)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)