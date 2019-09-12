require 'pry'
class CashRegister

  attr_accessor :total, :discount

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

      if @discount > 0
        apply_discount
      end
      @total
  end

  def apply_discount
    @total = @total-(@total*(@discount/100.0))
    @total
  end

end
