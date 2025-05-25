from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        first = request.form.get('first_name')
        last = request.form.get('last_name')
        return f"<h2>Hello, {first} {last}!</h2>"
    return render_template('form.html')

if __name__ == '__main__':
    app.run(debug=True)
