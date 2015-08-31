class Point
  attr_accessor :x, :y

  # attr_reader  :x, :y  #getter method
  # attr_writer :x, :y #setter reader

  # @x's scope is here
  def initialize(x_coord, y_coord) # costructor
    @x = x_coord
    @y = y_coord
  end

# getter method
  # def x
  #   @x
  # end

# getter method
  # def y
  #   @y
  # end

# setter method
#   def set_x=(x)
#     @x = x
#   end

# setter method
  #   def set_y=(y)
  #     @y = y
  #   end

  def display # this is an instance method
    "(#{@x}, #{@y})"
  end

  def to_s # this is an instance method
    display
  end

# add will take an instance of a Point class
# and return a new instance of Point class
  def +(point)
    Point.new(@x + point.x, @y + point.y)
  end

end


class Line
  def initialize(point1, point2)
    @point1 = point1
    @point2 = point2
  end

  def to_s
    "#{@point1}——#{@point2}"
  end
end

# Vector inherits from Line
class Vector < Line
  def initialize(point1, point2, direction)
    super(point1, point2)
    # @point1 = point1
    # @point2 = point2
    @direction = direction
  end

def to_s
"#{point1}——#{@point2} => (#{@direction})"
end

end

p1 = Point.new(1, 2) # instance is another name for object. you can call it on an instance.
# puts point.x

# change the point x coord to 2
# point.x= (2)
# point.x = 2
# puts point.x

p2 = Point.new(3, 4)

# p3 = Point.new(p1.x + p2.x, p1.y + p2.y)
# p3 = p1.add(p2)
p3 = p1 + p2
# puts p3

line = Line.new(p1, p2)
puts line

#Vector inherits from the line
vector = Vector.new(p1, p2, "N")
puts vector



class Person
  @@class_variable = "this is a class variable."

  def initialize (first_name, last name)
    @first_name = first_name
    @last_name = last_name
  end

def to_s # this is an instance method
  display
end

  def foobar
  end

end


person = Person.new("Don", "Drapper") #.new is a class method. Its called in a class which makes it a class method.
puts person




