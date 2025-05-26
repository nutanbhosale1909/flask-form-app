from flask import Flask, render_template, request
import os

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    full_name = None
    if request.method == "POST":
        first = request.form.get("first_name")
        last = request.form.get("last_name")
        full_name = f"{first} {last}"
    return render_template("form.html", full_name=full_name)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)  # Important for external access
