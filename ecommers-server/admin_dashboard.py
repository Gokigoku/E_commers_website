from flask import Blueprint,request
from classModule.visitorsClass import ObjVisitorCount
from classModule.adsClass import ObjAds
from classModule.productClicksClass import objPclicks
from classModule.order_placed import Objorder


admin_dashboard_blueprint = Blueprint('admin_dashboard_blueprint',__name__)

@admin_dashboard_blueprint.route('/today-visitors',methods=['GET'])
def tVisitors():
    return ObjVisitorCount.todayvisitors()

@admin_dashboard_blueprint.route('/today-adclicks',methods=['GET'])
def tAds():
    return ObjAds.adscount()

@admin_dashboard_blueprint.route('/today-product-clicks',methods=['GET'])
def tPclicks():
    return objPclicks.allProductClicks()

@admin_dashboard_blueprint.route('/visitor-trend',methods=['GET'])
def getVisitores():
    return ObjVisitorCount.visitorsTreand()

@admin_dashboard_blueprint.route('/order-count',methods=['GET'])
def count():
    return Objorder.TowdaysOrderCount()
 

