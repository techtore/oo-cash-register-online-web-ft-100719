class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount= 0) 
    @total = 0
    @discount = discount
  end
  def add_item(title, price, quantity= 1)
    
     @total += (price * quantity)
  end
  
  def apply_discount
    if @discount != 0 
      @total = @total - (@total * (@discount / 100.00))
    return "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
    end
    
  def items(title) 
  add_item(title)
  end 
end
