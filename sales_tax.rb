
# requirements:
# imported tax = 13%
# regular tax  = 10%
# tax exempt   = 0%

class Cart
    def initialize
        @items = []
        @subtotal = 0
        @tax = 0
        @grand_total = 0
    end

    def add_item(item)
        tax = 0
        if item.imported
            tax = item.price * 0.13
        elsif not item.exempt
            tax = item.price * 0.10
        end

        @subtotal += item.price
        @tax += tax
        @grand_total = @subtotal + @tax

        @items << item
    end

    def print_receipt
        @items.each do |meow|
            puts "#{meow.name} #{meow.price}"
        end

        foo = {:a => 1, :b => 2}

        puts "Subtotal: #{@subtotal}"
        puts "Tax: #{@tax}"
        puts "Grand total: #{@grand_total}"
    end
end

class Product
    def initialize(name, price, imported, exempt)
        @name  = name
        @price = price
        @imported = imported
        @exempt = exempt
    end

end

cart = Cart.new
thecart = Cart.new

book = Product.new("book", 12.49, true, true)
music_cd = Product.new("music_cd", 14.99, true, false)
chocolate_bar = Product.new("chocolate_bar", 0.85, false, false)
box_chocolate = Product.new("box_chocolate", 10.00, true, false)
bottle_perfume = Product.new("bottle_perfume", 47.50, false, false)


cart.add_item(book)
cart.add_item(music_cd)
cart.add_item(chocolate_bar)
cart.print_receipt
puts "-"*10
thecart.add_item(box_chocolate)
thecart.add_item(bottle_perfume)


thecart.print_receipt
