require './color.rb'
require './shape.rb'

module AbstractFactory
  def get_color(color); end
  def get_shape(shape); end
end

class ShapeFactory
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

class ColorFactory
  include AbstractFactory

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
      ColorFactory.new
    else
      nil
    end
  end
end

