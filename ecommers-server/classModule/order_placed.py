from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db
from datetime import datetime
from random import randint as ri


class orders:
    def __init__(self):
        self.time = datetime.today().strftime('%Y-%m-%d')
    
    def orderPlaced(self,*orderdDetial):
        Name = orderdDetial[0]
        Email = orderdDetial[1]
        Phone = orderdDetial[2]
        addOne = orderdDetial[3]
        addTwo = orderdDetial[4]

        id = ''
        for _ in range(0,5):
            ran = ri(1,9)
            id += str(ran)
        
        orderId = id

       
        sqlIns = text('INSERT INTO order_placed (name,email,phone_no,address1,address2,date,order_id) VALUES (:name,:email,:phone,:add1,:add2,:tdate,:orderId)')
        db.engine.execute(sqlIns,name = Name,email = Email,phone = Phone,add1 = addOne,add2 = addTwo,tdate=self.time,orderId = orderId)
        return 1
    
    def ordrDeteals(self):
        sqlIns=text('SELECT name FROM order_placed WHERE date=:tdate')
        resData = db.engine.execute(sqlIns,tdate = self.time)
        assocData = resData.fetchall()

        return jsonify([dict(row) for row in assocData])
    
    def TowdaysOrderCount(self):
        sqlSelect = text('SELECT COUNT(*) AS totalOrder FROM order_placed WHERE date=:tdate')
        resCount = db.engine.execute(sqlSelect,tdate=self.time)
        assocData = resCount.fetchall()

        return jsonify([dict(row) for row in assocData])
    
    def OrderId(self):
        sqlSelect = text('SELECT order_id FROM order_placed ORDER BY id DESC LIMIT 1')
        resCount = db.engine.execute(sqlSelect)
        assocData = resCount.fetchall()

        return jsonify([dict(row) for row in assocData])



    
Objorder = orders()
