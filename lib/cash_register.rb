class CashRegister

attr_accessor :total,:discount,:item,:previous_total

def initialize(discount=0)
    @total = 0
    @discount = discount
    @item = []
end

def add_item(title,price,amount=1)
   self.previous_total = price * amount
self.total += price * amount

amount.times do |i| self.item << title
end
end

def apply_discount
if self.discount > 0
    discount_price = (self.discount.to_f / 100) * self.total
self.total = self.total - discount_price
"After the discount, the total comes to $#{self.total.to_i}."
else 
    "There is no discount to apply."
end
end
def items
    self.item
end

def void_last_transaction
    self.total -= self.previous_total
end
end
