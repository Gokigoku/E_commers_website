from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db
from datetime import datetime #to import datetime

class visitor:
    def saveVisitors(self):
        #check ad clicks for today
        tdate = datetime.today().strftime('%Y-%m-%d')
        sqlChk = text('SELECT * FROM visitors WHERE date =:tdate')
        resChk = db.engine.execute(sqlChk,tdate=tdate)
        asscData = resChk.fetchall()

        if len(asscData)>0:
            #update the click count +1
            newVisitorCount=asscData[0].visitor_count+1#assData[0] it's select first row of the selecying tdate

            sqlUpdate = text('UPDATE visitors SET visitor_count=:newCounts WHERE date =:tdate')
            db.engine.execute(sqlUpdate,newCounts = newVisitorCount,tdate=tdate)

        else:
            #inser the new record
            sqlInsert = text('INSERT INTO visitors (date,visitor_count) VALUES (:tdate,1)')
            db.engine.execute(sqlInsert,tdate=tdate)
        return '[{"errFlag":0,"message":"Visitor View Successfully"}]'
    
    def todayvisitors(self):
        tdate = datetime.today().strftime('%Y-%m-%d')

        sqlTvisitorss = text('SELECT visitor_count FROM visitors WHERE date=:tdate')
        resVisitors = db.engine.execute(sqlTvisitorss,tdate = tdate)
        assocData = resVisitors.fetchall()
        return jsonify([dict(row) for row in assocData])
    
    def visitorsTreand(self):
        sqlTreand = text('SELECT SUM(visitor_count) AS monthly_visitors,MONTH(date) AS month FROM visitors WHERE DATE_FORMAT(date,"%c") IN (1,2,3,4,5,6,7,8,9,10,11,12)') 
        resTrend = db.engine.execute(sqlTreand)
        assocData = resTrend.fetchall()

        return jsonify([dict(row) for row in assocData])

ObjVisitorCount = visitor()