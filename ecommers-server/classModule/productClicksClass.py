from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db
from datetime import datetime

class productClicks:
    def saveProductClick(self,productId):
        tdate = datetime.today().strftime('%Y-%m-%d')
        sqlIns = text('INSERT INTO product_clicks (product_id,date) VALUES (:productId,:tdate)')
        db.engine.execute(sqlIns,productId=productId,tdate=tdate)

        return '[{"errFlag":0,"message":"Product Click Saved"}]'
    
    def allProductClicks(self):
        tdate = datetime.today().strftime('%Y-%m-%d')
        sqlSel = text('SELECT COUNT(id) AS totalcount FROM product_clicks WHERE date=:tdate')
        resSel=db.engine.execute(sqlSel,tdate = tdate)
        assocData = resSel.fetchall()

        return jsonify([dict(row) for row in assocData])
    
    def showProduct(self,productId):
        sqlIns = text('SELECT * FROM products WHERE :productId=id')
        resdata = db.engine.execute(sqlIns,productId=productId)
        assocData = resdata.fetchall()

        return jsonify([dict(row) for row in assocData])
        

    

objPclicks = productClicks()