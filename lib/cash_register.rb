require 'pry'
class CashRegister

  attr_accessor :total, :discount, :price, :title, :items, :cart
  
    def initialize(discount = 20.0)
        @total = 0 
        @items = []
        @cart = []
        self.discount = discount
        def apply_discount
          self.total = @total * ((100.0 - @discount)/100.0)
          discounted_total = self.total
          if self.total > 0
            return "After the discount, the total comes to $#{discounted_total.to_i}."
          else
            return "There is no discount to apply." 
          
          end 
        end 
    end
    
    def add_item(title, price, quantity = 1)
     @title = title
     @price = price 
     @total += price*quantity
     quantity.times {@items << @title}
     @cart << (@price * quantity)   
    end

    def items
        @items
    end

    def void_last_transaction
      new_total = @total - @cart.pop
      @total = new_total 
      return @total 
       
     
    end 

    
end 
