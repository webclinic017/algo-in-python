from flask import Flask,make_response, render_template, redirect, url_for, request

app = Flask(__name__)

@app.route("/")
def welcome():
    return "Welcome to algo trading"

@app.route("/redirect/<username>")
def redirectfunc(username):
    return "Welcome %s" %username


@app.route("/setcookie")
def setcookies():
    resp = make_response("cookie is created")
    resp.set_cookie('cookie','flask')
    resp.set_cookie('name','guddu')
    resp.set_cookie('mob','9451004764')
    return resp


@app.route("/getcookie")
def getcookies():
    cookie = request.cookies.get("cookie")
    name = request.cookies.get("name")
    mob = request.cookies.get("mob")
    return cookie+" # "+name+" # "+mob





@app.route("/myform")
def myform():
    return render_template("myform.html")

@app.route("/loginpage",methods=["post","get"])
def login():
    if request.method=="post":
        name = request.form("fname")
        return name
    else:
        return "if not run"
        # return redirect(url_for("/redirect",username=name))


@app.route("/<username>")
def usernames(username):
    return render_template("web.html",name=username)

@app.route("/aboutus")
def about_us():
    return " Visit our web application for algo trading"

@app.route("/contactus")
def contact():
    return "Contact us at gc4764@gmil.com"

@app.route("/profile/<username>")
def profile(username):
    return "Welcome, {} !".format(username)

if __name__ == "__main__":
    app.run(debug=True)