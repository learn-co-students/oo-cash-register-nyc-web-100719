require "pry"
class CashRegister
    attr_accessor :discount, :total

    def initialize(discount=0)
        @total = 0
        self.discount = discount 
        @items=[]
        @count = 0
    end
    def add_item(title,price,quantity=1)
        @price = price
        @quantity = quantity
        @total += @price * quantity 
        quantity.times do 
            @items << title
        end 
    end 
    def apply_discount
        if discount>0
            @total = @total * (100-discount) / 100
            total=@total
            p "After the discount, the total comes to $#{@total}."
        else 
            p "There is no discount to apply."
        end
    end 
    def void_last_transaction
        @total -= @price
        @quantity.times do 
            @items.pop
        end 
        if @items.count == 0
            @total = 0.0
        end
        
    end 
    def items
        @items
    end 
end 
