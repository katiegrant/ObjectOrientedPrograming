
class Person

    attr_accessor :first_name :last_name

    def initialize(first, last)
        @first_name = first
        @last_name  = last
    end

    def say_hello
        puts "Hello, my name is #{@first_name} #{@last_name}!"
    end

def say_goodnight
        puts "#{@first_name} #{@last_name} says Good night!"
    end

end

Katie = Person.new
Katie.first_name = "Katie"
Grant.last_name = "Grant"
puts Katie.inspect