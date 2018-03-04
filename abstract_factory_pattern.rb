module Shape
  def draw; end
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

class Square
  include Shape

  def draw
    puts "inside Square::draw() method"
  end
end

module Color
  def fill; end
end

class Red
  include Color

  def fill
    puts "inside Red::fill() method"
  end
end

class Blue
  include Color

  def fill
    puts "inside Red::fill() method"
  end
end

module AbstractFactory
  def get_color(color); end
  def get_shape(shape); end
end

class ShapeFactory < AbstractFactory
  include AbstractFactory

  def get_color(color=nil)
    nil
  end

  def get_shape(shape=nil)
    case shape
    when 'Circle'
      Circle.new
    when 'Rectangle'
      Rectangle.new
    when 'Square'
      Square.new
    else
      nil
    end
  end
end

class ColorFactory < AbstractFactory
  def get_color(color=nil)
    case color
    when 'Red'
      Red.new
    when 'Blue'
      Blue.new
    else
      nil
    end
  end

  def get_shape(color=nil)
    nil
  end
end

class Factory
  def self.get_factory(name=nil)
    case name
    when 'Shape'
      ShapeFactory.new
    when 'Color'
      Color.new
    else
      nil
    end
  end
end

