
$plateau = {:width => 9, :height => 9}


# class Plateau
#     def initialize(width, height)
#         @width = width
#         @height = height
#         @rovers = []
#     end

#     def add_rover(rover)
#         rover.added_to_plateau(self)
#         @rovers << rover
#     end
# end

class Rover
    def initialize(name, x, y, direction)
        @name = name
        @x = x
        @y = y
        @direction = direction
    end

    # def added_to_plateau(plateau)
    #     @plateau = plateau
    # end

    def send_input(command)
        if command == "L"
            turn_left
        elsif command == "R"
            turn_right
        elsif command == "M"
            move
        end
    end

    def turn_left
        puts "I'm turning left."
        if @direction == "N"
            @direction = "W"
        elsif @direction == "W"
            @direction = "S"
        elsif @direction == "S"
            @direction = "E"
        elsif @direction == "E"
            @direction = "N"
        end
    end

    def turn_right
        puts "I'm turning right."
        if @direction == "N"
            @direction = "E"
        elsif @direction == "E"
            @direction = "S"
        elsif @direction == "S"
            @direction = "W"
        elsif @direction == "W"
            @direction = "N"
        end
    end

    def move
        if @direction == "N"
            @y -= 1 if @y > 0
        elsif @direction == "E"
            @x += 1 if @x < $plateau[:width]
        elsif @direction == "S"
            @y += 1 if @y < $plateau[:height]
        elsif @direction == "W"
            @x -= 1 if @x > 0
        end
    end

    def print_status
        puts "My name is #{@name}."
        puts "I am currently at #{@x}, #{@y}."
        puts "I am facing #{@direction}."
    end

end

puts "Enter curiosity's position and direction: "
# 5 5 N
user_input = gets.chomp.split # "5 5 N"
x = user_input[0].to_i
y = user_input[1].to_i
direction = user_input[2]

curiosity = Rover.new("Curosity", x, y, direction)

puts "Enter spirit's position and direction: "
user_input = gets.chomp.split
x = user_input[0].to_i
y = user_input[1].to_i
direction = user_input[2]

spirit = Rover.new("Spirit", x, y, direction)
# L = 90 degree turn left
# R = 90 degree turn right
# M = move forward one grid space

puts "Enter a string of commands for curiosity: "
commands = gets.chomp.split("")

commands.each do |command|
    curiosity.send_input(command)
end

puts "Enter a string of commands for spirit: "
commands = gets.chomp.split("")

commands.each do |command|
    spirit.send_input(command)
end

curiosity.print_status
spirit.print_status