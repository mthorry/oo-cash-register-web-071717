# We're going to create an Object Oriented Cash Register that can:
  # Add items of varying quantities and prices
  # Calculate discounts
  # Keep track of what's been added to it
  # Void the last transaction
require "pry"

class CashRegister

  attr_accessor :total, :item, :price
  attr_reader :discount, :items



  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = [] # creates new array for each transaction to hold items
    @prices = []
  end


  def add_item(item, price, quantity=1)
    self.total += price * quantity
    quantity.times do item
      @items << item
      @prices << price
    end
  end


  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      discount_price = self.total - (self.total * discount/100)
      self.total = discount_price
      "After the discount, the total comes to $#{discount_price}."
    end
  end


  def void_last_transaction
    self.total -= @prices[-1]
  end

end