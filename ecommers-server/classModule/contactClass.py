from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db
from datetime import datetime #to import datetime

class contact:
    def saveContct(self,*contactInfo):#arbitory argument 
        customerName = contactInfo[0]
        customerEmail= contactInfo[1]
        customerMobile = contactInfo[2]
        customerQuery = contactInfo[3]

        tdate = datetime.today().strftime('%Y-%m-%d')

        sqlIns = text('INSERT INTO contact_data (customer_name,email,phone_no,query,date) VALUES (:cname,:cemail,:cmobile,:cquery,:tdate)')
        db.engine.execute(sqlIns,cname=customerName,cemail=customerEmail,cmobile=customerMobile,cquery=customerQuery,tdate=tdate)

        return '[{"errFlag":0,"messeage":"Contact Info Saved Successfully"}]'

objContact = contact()
