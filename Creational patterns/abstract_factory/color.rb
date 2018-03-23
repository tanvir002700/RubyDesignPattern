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
