require 'pry'

class CashRegister

  attr_accessor :total, :discount

  def initialize (discount = 0)
    @total = 0
    @discount = discount

    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity

    quantity.times do
      @items << item
    end

  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total -= @total * @discount/100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @total
  end


end
