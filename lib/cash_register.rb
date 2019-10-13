require 'pry'

class CashRegister

attr_accessor :discount, :total, :add_item, :last_transaction


    def initialize(discount=0.0)
        @total = 0
        @discount = discount
        @item_array = []
    end
    
    def add_item(title, price, quantity=1)
        self.total += price*quantity
        quantity.times do 
            @item_array << title
        end
        self.last_transaction = price*quantity  
    end

    def items
        @item_array
    end 

    def apply_discount
        if discount != 0.0
            discount_total = self.total * (self.discount.to_f/100)
            new_total = self.total - discount_total 
            self.total = new_total
            p "After the discount, the total comes to $#{new_total.to_i}."
        else
            "There is no discount to apply."
        end 
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
    
end

