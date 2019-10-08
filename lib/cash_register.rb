require 'pry'
class CashRegister
    attr_accessor :discount, :total, :last_transaction_amt

    def initialize(discount = 0)
        @total = 0
        self.discount = discount
        @items = []
        @last_transaction_amt = 0
    end

    def add_item(title, price, quantity = 1)
        self.last_transaction_amt = 0
        quantity.times do
            self.items << title
            #self.total += price
            total += price
            self.last_transaction_amt += price
        end
    end

    def apply_discount
        if self.discount == 0
            "There is no discount to apply."
        else
            self.total = self.total - self.total * discount / 100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        self.total -= self.last_transaction_amt
    end
end
