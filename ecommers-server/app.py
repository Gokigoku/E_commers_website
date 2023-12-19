#coding patren MVC(module view control)
from flask import Flask
from flask_cors import CORS
from admin_login import user_blueprint #linking blueprint to app
from db import db #buliding data base connection
from home import product_blueprint
from admin_dashboard import admin_dashboard_blueprint
from orderSuccessFull import order_succesfully

app = Flask(__name__)
CORS(app)#URLS are whitelisted here

#DB config
username='root'
password=''
server='127.0.0.1'
dbname='/ecommers_store'
userpass = 'mysql+pymysql://'+username+':'+password+'@'
app.config['SQLALCHEMY_DATABASE_URI']=userpass + server + dbname
app.config['SQLALCHEMY_TRACK_MODIFICATIONS']=True

db.init_app(app)#setting all this config values to the sqlalchemy i.e derived in db.py

#register blueprint
app.register_blueprint(user_blueprint)#it's helps user_blue print to app.py
app.register_blueprint(product_blueprint)
app.register_blueprint(admin_dashboard_blueprint)
app.register_blueprint(order_succesfully)


@app.route('/')
def serverStatus():#this urls is also called as API
    return "Server id uo and running"
@app.route('/sum')
def sum():
    a=10
    b=20
    return str(a+b)
@app.route('/power/exponential')
def power():
    a=10
    b=2
    return str(a**b)

if __name__=='__main__':
    app.run(host='0.0.0.0',debug=True,port=8080)