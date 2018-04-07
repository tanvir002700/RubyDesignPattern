class Char
  def initialize(name, size)
    @name = name
    @font_size = size
  end

  def print
    "font #{@name} size #{@font_size}"
  end
end
