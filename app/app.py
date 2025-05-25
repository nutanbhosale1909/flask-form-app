from flask import Flask, render_template, request

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "POST":
        first_name = request.form.get("first_name")
        last_name = request.form.get("last_name")
        return f"Hello, {first_name} {last_name}!"
    return render_template("form.html")

if __name__ == "__main__":
    app.run(debug=True)
