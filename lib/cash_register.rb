require 'pry'
class CashRegister

  attr_accessor :total, :discount, :items

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title,price,quantity=0)
      if quantity > 0
        @total += (price*quantity)
      else
        @total += price
      end
  end

  def apply_discount
    if @discount > 0
      @total = @total-(@total*(@discount/100.0))
      @msg = "After the discount, the total comes to $%d." % @total.round
    else
      @msg = "There is no discount to apply."
    end
  end

end
