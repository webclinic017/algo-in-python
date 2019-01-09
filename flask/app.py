from flask import Flask,make_response, render_template, redirect, url_for, request

app = Flask(__name__)

@app.route("/")
def home():
   
    param = {'title':"home"}
    return render_template("index.html",param=param)


@app.route("/about/")
def about():
    param = {'title':"About Us"}
    return render_template("about_us.html",param=param)

@app.route("/contact/")
def contact():
    param = {'title':"Contact Us"}
    return render_template("contact_us.html",param=param)

@app.route("/disclaimer/")
def Disclaimer():
    param = {'title':" Disclaimer "}
    return render_template("disclaimer.html",param=param)

@app.route("/tradesignal/")
def tradesignal():
    param = {'title':"Trade Signal"}
    return render_template("trade_signal.html",param=param)

@app.route("/login/",methods=["post","get"])
def login():
    param = {'title':"login Us"}
    return render_template("login.html",param=param)

@app.route("/signup/")
def signup():
    param = {'title':"signup"}
    return render_template("signup.html",param=param)

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
def loginpage():
    if request.method=="post":
        name = request.form("fname")
        return name
    else:
        return "if not run"
        # return redirect(url_for("/redirect",username=name))


# @app.route("/<username>")
# def usernames(username):
#     return render_template("web.html",name=username)

@app.route("/aboutus")
def about_us():
    return " Visit our web application for algo trading"



@app.route("/profile/<username>")
def profile(username):
    return "Welcome, {} !".format(username)

if __name__ == "__main__":
    app.run(debug=True)