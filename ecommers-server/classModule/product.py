from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db

class Product():
    def displayAllProduct(self):
        sqlproduct=text('SELECT * FROM PRODUCTS')
        resProduct = db.engine.execute(sqlproduct)
        assoData = resProduct.fetchall()

        return jsonify([dict(row) for row in assoData])
    

objProduct = Product()