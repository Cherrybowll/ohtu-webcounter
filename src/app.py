from flask import Flask, redirect, render_template, request
from counter import Counter

app = Flask(__name__)
cnt = Counter()

@app.route("/")
def index():
    return render_template("index.html", value=cnt.value)

@app.route("/increase", methods=["POST"])
def increase():
    cnt.increase()
    return redirect("/")

#Turha kommentti
@app.route("/increment", methods=["POST"])
def increment():
    try:
        maara = int(request.form.get("kasvata_text"))
    except:
        maara = 0
    cnt.increment(maara)
    return redirect("/")

@app.route("/reset", methods=["POST"])
def reset():
    cnt.reset()
    return redirect("/")
