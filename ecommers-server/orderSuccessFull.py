from flask import Blueprint,request
from classModule.order_placed import Objorder





order_succesfully = Blueprint('order_succesfully',__name__)

@order_succesfully.route('/order-succesfull',methods=['POST'])
def orderS():
    
    Name = request.form['customerName']
    Email = request.form['customerEmail']
    phone = request.form['customerPhone_no']
    add1 = request.form['customerAddOne']
    add2 = request.form['customerAddTwo']
    order_id = id
    return Objorder.orderPlaced(Name,Email,phone,add1,add2)

@order_succesfully.route('/order-detial',methods = ['GET'])
def deteals():
    return Objorder.ordrDeteals()


@order_succesfully.route('/order-id',methods=['GET'])
def identity():
    return Objorder.OrderId()
