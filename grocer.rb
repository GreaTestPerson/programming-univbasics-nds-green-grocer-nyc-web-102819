def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  result={}
  i=0 
  while i < collection.count do

    if name != collection[i][:item]
      i += 1
    else
      result = collection[i]
      i += 1
    end
  end
  if result == {}
    return nil
  else
    result
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
    cart1 = cart
    cart2 = []
    i = 0 # element numnber in cart1
    while i < cart1.count do

    item_name = cart1[i][:item]
    item_price = cart1[i][:price]
    item_clearance = cart1[i][:clearance]
    new_item = {item:item_name, price: item_price, clearance: item_clearance, count: 1}


    if cart2.any? {|element| element[:item] == item_name}

      cart2.each { |element|
                    if element[:item] == item_name
                         element[:count] += 1
                     end
                 }
    else
      cart2.push(new_item)
    end
    i += 1
  end
  cart2

end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
