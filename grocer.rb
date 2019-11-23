require 'pry'

def consolidate_cart(cart)
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

def apply_coupons(cart, coupons)
  # code here

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  #this method relies on the other 3 methods above
  # code here
end
