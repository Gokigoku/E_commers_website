from sqlalchemy.sql import text
from flask import Blueprint,jsonify,request 
from db import db
from datetime import datetime #to import datetime

class ads:
    def saveAdClicks(self):
        #check ad clicks for today
        tdate = datetime.today().strftime('%Y-%m-%d')
        sqlChk = text('SELECT * FROM ads WHERE date =:tdate')
        resChk = db.engine.execute(sqlChk,tdate=tdate)
        asscData = resChk.fetchall()

        if len(asscData)>0:
            #update the click count +1
            newClickCount=asscData[0].clicks+1

            sqlUpdate = text('UPDATE ads SET clicks=:newClicks WHERE date =:tdate')
            db.engine.execute(sqlUpdate,newClicks = newClickCount,tdate=tdate)

        else:
            #inser the new record
            sqlInsert = text('INSERT INTO ads (date,clicks) VALUES (:tdate,1)')
            db.engine.execute(sqlInsert,tdate=tdate)
        return '[{"errFlag":0,"message":"ADS Click Logged Successfully"}]'
    
    def adscount(self):
        tdate = datetime.today().strftime('%Y-%m-%d')
        sqlad = text('SELECT clicks FROM ads WHERE date=:tdate')
        resad = db.engine.execute(sqlad,tdate = tdate)
        assocData = resad.fetchall()

        return jsonify([dict(row) for row in assocData])


ObjAds = ads()