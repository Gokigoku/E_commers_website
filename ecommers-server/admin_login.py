from classModule.userClass import objUsers
from flask import Blueprint,request
import hashlib #uses for password encription


user_blueprint=Blueprint('user_blueprint',__name__)#linking to app.py
@user_blueprint.route('/validate-cread',methods=['POST'])
def chkAdminUser():
    username = request.form['username']
    password = request.form['password']

    if not username and not password:
        return '[{"errMsg":1,"message":"Invalid Credientials"}]'#json serializationn
    
    encPassword = hashlib.sha256(password.encode('utf-8')).hexdigest() #this encript the password
    resultValue = objUsers.validatecred(username,encPassword)#this link the userClass's object i.e objUsers

    if resultValue==0:
        return '[{"errFlag":1,"message":"Invalid Credentils"}]'
    else:
        return resultValue