require 'pry'

class CashRegister

    attr_accessor :total, :discount, :items, :last_item_total

    def initialize(discount = 0.0)
        @total = 0.00
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity = 1)
        @total += (price * quantity)
        quantity.times { @items << title }
        @last_item_total = (price * quantity)
    end

    def apply_discount
        if @discount > 0
            @total = @total * ((100.0 - discount)/100.0)
            p "After the discount, the total comes to $#{@total.to_i}."
        else
            p "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_item_total
    end

end