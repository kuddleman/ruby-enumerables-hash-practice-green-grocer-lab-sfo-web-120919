require 'pry'

def consolidate_cart(cart)
  # given an array, translate it into a hash
  #that includes counts for each item
  final_hash = {}
  cart.each do |element_hash|
    element_name = element_hash.keys[0]


    if final_hash.has_key?(element_name)
      final_hash[element_name][:count] += 1
    else
      final_hash[element_name] = {
        count: 1,
        price: element_hash[element_name][:price],
        clearance: element_hash[element_name][:clearance]
      }
    end
  end
  final_hash
end
//left off at 47.31
def apply_coupons(cart, coupons)
  # code here
  coupons.each do |coupon|
    item = coupon[:item]
    if car[item] && coupon[:item][:count] >= coupon[:num] && cart["#{item} W/COUPON"]
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  #this method relies on the other 3 methods above
  # code here
end
