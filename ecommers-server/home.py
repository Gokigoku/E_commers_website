#from classModule.userClass import objUsers
from flask import Blueprint,request
from classModule.product import objProduct
from classModule.adsClass import ObjAds
from classModule.visitorsClass import ObjVisitorCount
from classModule.contactClass import objContact
from classModule.productClicksClass import objPclicks

name = ['Gokul','gokigoku2810@gmail.com','9353506475','nothing']

product_blueprint = Blueprint('product_blueprint',__name__)

@product_blueprint.route('/products',methods=['GET'])
def products():
    return objProduct.displayAllProduct()
@product_blueprint.route('/track-ad-click',methods=['GET'])
def lodAdClick():
    return ObjAds.saveAdClicks()

@product_blueprint.route('/visitor-count',methods=['GET'])
def visitorCount():
    return ObjVisitorCount.saveVisitors()

@product_blueprint.route('/customer-data',methods=['POST'])
def contactdata():
    customerName = request.form['customerName']
    customerEmail = request.form['customerEmail']
    customerMobile = request.form['customerMobile']
    customerQuery = request.form['customerQuery']

    #checking if Name,Email,Mobile is empty
    if not customerName and not customerEmail and not customerMobile:
        return '[{"errFlag":0,"message":"Some Fields are empty"}]'

    return objContact.saveContct(customerName,customerEmail,customerMobile,customerQuery)#how to give the inputs gor arbitory argument

@product_blueprint.route('/track-product-click/<product_id>',methods=['GET'])
def saveProduct(product_id):
    return objPclicks.saveProductClick(product_id)
 
@product_blueprint.route('/plsework/<product_id>',methods=['GET'])
def workplese(product_id):
    return objPclicks.showProduct(product_id)
