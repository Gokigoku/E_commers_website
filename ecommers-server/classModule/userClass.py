from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db


# check user input to validate username and password
class Users:
    def validatecred(self,username,password):
        sqlcred = text('SELECT * FROM admin_users WHERE username = :username AND password = :password AND status =1')
        resobj = db.engine.execute(sqlcred,username = username ,password = password)
        assocData = resobj.fetchall() #if 0 char enetred it throws an error to overcome this uses exception handler or length of result
        if len(assocData)>0:
            return jsonify([dict(row) for row in assocData])
        else:
            return 0
# object for class users
objUsers = Users()