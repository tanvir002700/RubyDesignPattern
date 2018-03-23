module Shape
  def draw; end
end

class Square
  include Shape

  def draw
    puts "inside Square::draw() method"
  end
end

class Rectangle
  include Shape

  def draw
    puts "Inside Rectangle::draw() method"
  end
end

class Circle
  include Shape

  def draw
    puts "inside Circle::draw() method"
  end
end
